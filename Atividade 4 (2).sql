CREATE TABLE clientes (
  IDcliente INTEGER PRIMARY KEY, 
  CPF char (14) NOT NULL,
  Nome varchar (254) NOT NULL,
  Email varchar (254) NOT NULL
);

INSERT INTO clientes VALUES (01, '102.141.975-30', 'Alice', 'alice@gmail');

SELECT * FROM clientes;

CREATE TABLE enderecos (
  IDcliente INT,
  Rua varchar (254) NOT NULL,
  Numero char (14) NOT NULL,
  Complemento varchar (254) NOT NULL,
  foreign KEY (IDcliente) references clientes (IDcliente)  
);

INSERT INTO enderecos VALUES (01, 'alameda jequitiba', '105', 'bloco, apartamento');

SELECT * FROM enderecos;

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

CREATE TABLE vendas (
  IDcliente INT,
  IDcarro INT,
  Pagamento char (14) NOT NULL,
  Data date NOT NULL,
  foreign KEY (IDcliente) references clientes (IDcliente)  
);
INSERT INTO vendas VALUES (01, 01, 'debito', '2009/03/22');

SELECT * FROM vendas;