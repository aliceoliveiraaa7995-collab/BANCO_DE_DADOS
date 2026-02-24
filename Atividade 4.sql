CREATE TABLE clientes (
  IDcliente INTEGER PRIMARY KEY, 
  CPF char (14) NOT NULL,
  Nome varchar (254) NOT NULL,
  Email varchar (254) NOT NULL
);

INSERT INTO clientes VALUES (01, '102.141.975-30', 'Alice', 'alice@gmail');

SELECT * FROM clientes;

CREATE TABLE carros (
  IDcarro INT,
  IDcliente INT,
  Modelo varchar (254) NOT NULL,
  Cor varchar (254) NOT NULL,
  Preco char (14) NOT NULL,
  PRIMARY KEY (IDcarro), 
  foreign KEY (IDcliente) references clientes (IDcliente)  
);

INSERT INTO carros VALUES (01, 01, 'porshe', 'preto', '203910');

SELECT * FROM carros;