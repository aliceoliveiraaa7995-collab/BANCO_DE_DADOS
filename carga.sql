-- ============================================================
-- CARGA DA PLANILHA NO BANCO (PostgreSQL)
-- ============================================================
\copy obras (codigo_obra, bdi_servico) FROM 'saida_pipeline_obra/obras.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8')

CREATE TEMP TABLE stg_grupos (
    identificacao  VARCHAR(20),
    descricao      VARCHAR(255)
);
\copy stg_grupos FROM 'saida_pipeline_obra/grupos_servicos.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8')

INSERT INTO grupos_servicos (obra_id, identificacao, descricao)
SELECT (SELECT id FROM obras LIMIT 1), identificacao, descricao
FROM stg_grupos;

CREATE TEMP TABLE stg_servicos (
    grupo_identificacao  VARCHAR(20),
    identificacao         VARCHAR(30),
    tipo                  VARCHAR(50),
    codigo                INTEGER,
    descricao             VARCHAR(500),
    unidade               VARCHAR(20),
    quantidade            NUMERIC(18,2),
    valor_sem_bdi         NUMERIC(18,2),
    valor_com_bdi         NUMERIC(18,2),
    parcela               NUMERIC(18,2)
);
\copy stg_servicos FROM 'saida_pipeline_obra/servicos.csv' WITH (FORMAT csv, HEADER true, ENCODING 'UTF8')

INSERT INTO servicos (grupo_id, identificacao, tipo, codigo, descricao, unidade,
                       quantidade, valor_sem_bdi, valor_com_bdi, parcela)
SELECT g.id, s.identificacao, s.tipo, s.codigo, s.descricao, s.unidade,
       s.quantidade, s.valor_sem_bdi, s.valor_com_bdi, s.parcela
FROM stg_servicos s
JOIN grupos_servicos g ON g.identificacao = s.grupo_identificacao;


SELECT (SELECT COUNT(*) FROM obras)           AS total_obras,
       (SELECT COUNT(*) FROM grupos_servicos) AS total_grupos,
       (SELECT COUNT(*) FROM servicos)        AS total_servicos;
