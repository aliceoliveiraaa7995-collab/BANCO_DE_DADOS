
-- create
CREATE TABLE usuario (
  ID INTEGER PRIMARY KEY,
  Nome varchar(254) NOT NULL,
  CPF char(14) NOT NULL,
  Data date NOT NULL,
  Email varchar(254) NOT NULL
);

-- insert
INSERT INTO usuario VALUES (01, 'Alice', '10214197530', '2009/03/22', 'alice@gmail');

SELECT * FROM usuario;
-- create
CREATE TABLE endereco (
  ID INT,
  Userid INT,
  PRIMARY KEY (ID),
  foreign KEY (Userid) references usuario (ID)
);

INSERT INTO endereco VALUES (01, 01);
SELECT * FROM endereco;