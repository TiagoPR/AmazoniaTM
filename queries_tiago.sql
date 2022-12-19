USE amazonia

# Conhecer o armazém em que o pedido está relacionado – Tigas
DELIMITER &&
CREATE FUNCTION armazem_do_pedido ( id_pedido INT )
RETURNS INT
DETERMINISTIC
BEGIN
   DECLARE funcionario INT;
   SET funcionario = (select fk_Funcionario_Funcionario_ID from tem where fk_Pedido_ID_Pedido = id_pedido limit 1); # porque tem 3 funcionarios em 1 pedido
   RETURN (select fk_Armazem_Armazem_ID from funcionario where Funcionario_ID = funcionario);
END; &&

select * from funcionario
select * from tem
drop function armazem_do_pedido


# Identificar os items mais vendidos – Tigas
DELIMITER && 
CREATE PROCEDURE items_mais_vendidos ()
BEGIN 
select * from pedidos order by Total limit 10;
END && 

# Obter uma relação entre salário e desempenho de cada funcionarios por tipo – Tigas
select Funcionario_ID, Salario/Desempenho as Quota from funcionario;

# Funcionarios com mais pedidos associados
DELIMITER && 
CREATE PROCEDURE funcionarios_com_mais_pedidos ()
BEGIN 
#select fk_Funcionario_Funcionario_ID, count(fk_Pedido_ID_Pedido) from tem order by count(fk_Pedido_ID_Pedido) limit 10;
SELECT 
    F.Funcionario_ID, 
    COUNT(T.fk_Pedido_ID_Pedido) AS TotalPedidos
FROM 
	funcionario  F 
LEFT JOIN 
	tem  T
ON 
	T.fk_Funcionario_Funcionario_ID = F.Funcionario_ID
GROUP BY 
    F.Funcionario_ID 
order by
	TotalPedidos DESC;
END &&

select * from tem where fk_Funcionario_Funcionario_ID = 1;

#drop procedure funcionarios_com_mais_pedidos;

