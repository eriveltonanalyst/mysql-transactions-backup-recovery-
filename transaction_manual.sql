USE ecommerce;

-- Desabilitando autocommit
SET autocommit = 0;

START TRANSACTION;

-- Inserção de cliente
INSERT INTO cliente (nome, email, saldo)
VALUES ('João Silva', 'joao@email.com', 500.00);

-- Inserção de pedido
INSERT INTO pedido (id_cliente, valor, status)
VALUES (1, 200.00, 'EM PROCESSAMENTO');

-- Confirma a transação
COMMIT;

-- Caso algo dê errado, utilize:
-- ROLLBACK;
