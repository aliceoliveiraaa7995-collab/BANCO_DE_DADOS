-- ============================================================
-- CURVA ABC (view, não altera nenhuma tabela existente)
-- ============================================================

CREATE OR REPLACE VIEW vw_curva_abc AS
WITH valores AS (
    SELECT
        s.id,
        s.grupo_id,
        s.identificacao,
        s.descricao,
        (s.quantidade * s.valor_com_bdi) AS valor_total
    FROM servicos s
    WHERE (s.quantidade * s.valor_com_bdi) > 0   -- só entra na curva quem tem valor orçado
),
acumulado AS (
    SELECT
        v.*,
        SUM(v.valor_total) OVER () AS soma_geral,
        SUM(v.valor_total) OVER (ORDER BY v.valor_total DESC
                                  ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS acumulado
    FROM valores v
)
SELECT
    a.id,
    a.grupo_id,
    a.identificacao,
    a.descricao,
    a.valor_total,
    ROUND(a.valor_total / a.soma_geral * 100, 2)   AS percentual,
    ROUND(a.acumulado   / a.soma_geral * 100, 2)   AS percentual_acumulado,
    CASE
        WHEN a.acumulado / a.soma_geral * 100 <= 80 THEN 'A'
        WHEN a.acumulado / a.soma_geral * 100 <= 95 THEN 'B'
        ELSE 'C'
    END AS classe_abc
FROM acumulado a
ORDER BY a.valor_total DESC;

quantos itens e quanto valor cada classe representa
SELECT classe_abc,
       COUNT(*)                     AS qtd_itens,
       SUM(valor_total)             AS valor_total,
       ROUND(SUM(valor_total) / (SELECT SUM(valor_total) FROM vw_curva_abc) * 100, 1) AS pct_do_total
FROM vw_curva_abc
GROUP BY classe_abc
ORDER BY classe_abc;
