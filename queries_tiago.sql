USE amazonia

# Conhecer o armazém em que o pedido está relacionado – Tigas

DELIMITER &&
CREATE FUNCTION armazem_do_pedido ( id_pedido INT )
RETURNS INT
DETERMINISTIC
BEGIN
   DECLARE funcionario_id INT;
   SET funcionario_id = (select fk_Funcionario_Funcionario_ID from tem where fk_Pedido_ID_Pedido = id_pedido);
   RETURN (select fk_Armazem_Armazem_ID from funcionario where funcionario_id = Funcionario_ID);
END; &&

drop function armazem_do_pedido


# Identificar os items mais vendidos – Tigas

DELIMITER && 
CREATE PROCEDURE items_mais_vendidos ()
BEGIN 
select * from pedidos order by Total limit 10;
END && 

# Obter uma relação entre salário e desempenho de cada funcionarios por tipo – Tigas
select Funcionario_ID, Salario/Desempenho as Quota from funcionario;


