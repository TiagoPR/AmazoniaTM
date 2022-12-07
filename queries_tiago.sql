# Conhecer o armazém em que o pedido está relacionado – Tigas

DELIMITER &&
CREATE FUNCTION armazem_do_pedido ( id_pedido INT )
RETURNS INT
BEGIN
   DECLARE funcionario_id INT;
   SET funcionario_id = (select fk_Funcionario from tem where fk_pedido = id_pedido);
   RETURN (select fk_Armazem_Funcionario from funcionario where funcionario_id = Funcionario_ID);
END; &&


# Identificar os items mais vendidos – Tigas

DELIMITER && 
CREATE PROCEDURE items_mais_vendidos ()
BEGIN 
select * from pedidos order by Total limit 10;
END && 


