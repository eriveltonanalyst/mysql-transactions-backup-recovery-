USE ecommerce;

DELIMITER $$

CREATE PROCEDURE sp_realizar_pedido (
    IN p_id_cliente INT,
    IN p_valor DECIMAL(10,2)
)
BEGIN
    DECLARE saldo_atual DECIMAL(10,2);
    DECLARE erro BOOLEAN DEFAULT FALSE;

    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
    SET erro = TRUE;

    START TRANSACTION;

    SELECT saldo INTO saldo_atual
    FROM cliente
    WHERE id_cliente = p_id_cliente;

    SAVEPOINT inicio_pedido;

    IF saldo_atual >= p_valor THEN
        UPDATE cliente
        SET saldo = saldo - p_valor
        WHERE id_cliente = p_id_cliente;

        INSERT INTO pedido (id_cliente, valor, status)
        VALUES (p_id_cliente, p_valor, 'CONFIRMADO');
    ELSE
        SET erro = TRUE;
    END IF;

    IF erro THEN
        ROLLBACK TO inicio_pedido;
        ROLLBACK;
    ELSE
        COMMIT;
    END IF;

END $$

DELIMITER ;

-- Chamada da procedure
CALL sp_realizar_pedido(1, 150.00);
