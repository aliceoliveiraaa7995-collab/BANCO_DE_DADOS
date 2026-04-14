--  1. Liste todos os clientes da tabela customer.
SELECT * FROM CUSTOMER;

-- 2. Mostre apenas o nome e sobrenome dos clientes.
SELECT FIRST_NAME, LAST_NAME FROM CUSTOMER;

-- 3. Liste os filmes com duraÇao maior que 120 minutos.
SELECT * FROM FILM WHERE LENGTH > 120;

-- 4. Mostre todos os filmes lan ̧cados no ano de 2006.
SELECT * FROM FILM WHERE RELEASE_YEAR = 2006;

-- 5. Liste os clientes ativos (active = 1).
SELECT * FROM CUSTOMER WHERE ACTIVE = 1;

-- 6. Liste todos os alugúeis com o nome do cliente.
SELECT CUSTOMER.FIRST_NAME, RENTAL.CUSTOMER_ID
FROM CUSTOMER
INNER JOIN RENTAL
ON CUSTOMER.CUSTOMER_ID = INVENTORY_ID;

-- 7. Liste os pagamentos com nome do cliente e valor pago.
SELECT CUSTOMER.FIRST_NAME, PAYMENT.AMOUNT
FROM CUSTOMER
INNER JOIN PAYMENT
ON CUSTOMER.CUSTOMER_ID = PAYMENT_ID;

-- 8. Liste os filmes alugados com o nome do cliente.
SELECT FILM.TITLE, CUSTOMER.FIRST_NAME
FROM FILM
INNER JOIN CUSTOMER
ON CUSTOMER.CUSTOMER_ID = FILM_ID;

-- 9. Liste todos os funcionarios e suas lojas.
SELECT STAFF.FIRST_NAME, STORE.STORE_ID
FROM STAFF
INNER JOIN STORE
ON STAFF.STAFF_ID = STORE.STORE_ID;

-- 10. Liste todos os filmes com sua categoria.
SELECT FILM.TITLE, CATEGORY.NAME
FROM FILM
INNER JOIN CATEGORY
ON FILM.FILM_ID = CATEGORY.CATEGORY_ID;

-- 11. Quantos clientes existem?
SELECT COUNT(*) FROM CUSTOMER;

-- 12. Qual o valor total de pagamentos realizados?
SELECT SUM(AMOUNT) FROM PAYMENT;

-- 13. Qual o valor médio dos pagamentos?
SELECT AVG(AMOUNT) FROM PAYMENT;

-- 14. Quantos filmes existem por categoria?
 
-- 15. Qual cliente fez mais alugueis?

-- 16. Liste o total gasto por cliente.

-- 17. Liste os 5 clientes que mais gastaram.

-- 18. Liste os filmes mais alugados.

-- 19. Para cada categoria, mostre:
-- • total de filmes
-- • total de alugueis

-- 20. Liste:
-- • nome do cliente
-- • filme alugado
-- • categoria do filme
-- • valor pago

-- 21. Liste clientes que nunca alugaram nada.

-- 22. Liste filmes que nunca foram alugados.

-- 23. Para cada cliente, mostre:
-- • total de alugueis
-- • total gasto
-- • ticket medio

-- 24. Liste o dia com mais alugueis.

-- 25. Liste:
-- • cliente
-- • quantidade de filmes alugados
-- • categoria favorita (mais alugada)
