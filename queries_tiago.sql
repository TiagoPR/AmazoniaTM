USE amazonia

# Conhecer o armazém em que o pedido está relacionado – Tigas
DELIMITER &&
CREATE FUNCTION armazem_do_pedido ( id_ped INT )
RETURNS INT
DETERMINISTIC
BEGIN
   #DECLARE funcionario INT;
   # σ ROWNUM() > 0 and ROWNUM() ≤ 1 π fk_Pedido_ID_Pedido σ fk_Pedido_ID_Pedido = id_pedido tem
   #SET funcionario = (select fk_Funcionario_Funcionario_ID from tem where fk_Pedido_ID_Pedido = id_pedido limit 1); # porque tem 3 funcionarios em 1 pedido
   # π fk_Armazem_Armazem_ID σ Funcionario_ID = funcionario funcionario
   #RETURN (select fk_Armazem_Armazem_ID from funcionario where Funcionario_ID = funcionario);
   # π fk_Armazem_Armazem_ID σ ID_Pedido = id_ped pedido   	NOVA VERSÃO PQ ANTES NAO TINHA FK_ARMAZEM NO PEDIDO
   return (select fk_Armazem_Armazem_ID from pedido where ID_Pedido = id_ped);
END; &
delimiter ;

select * from funcionario
select * from tem
drop function armazem_do_pedido


# Identificar os items mais vendidos – Tigas
DELIMITER && 
CREATE PROCEDURE items_mais_vendidos ()
# τ TotalItems desc π I.Item_ID, TotalPedidos γ I.Item_ID; SUM(C.Quantidade)→TotalItems 
# ( ρ I item left outer join C.fk_Item_Item_ID = I.Item_ID ρ C contem )
BEGIN 
select 
    I.Item_ID, 
    SUM(C.Quantidade) AS TotalItems
from 
	item  I 
left join 
	contem  C
on 
	C.fk_Item_Item_ID = I.Item_ID
group by 
    I.Item_ID 
order by
	TotalItems DESC;
END; && 
delimiter ;

select * from contem;
# drop procedure items_mais_vendidos;

# Obter uma relação entre salário e desempenho de cada funcionarios por tipo – Tigas
# π Funcionario_ID, Salario / Desempenho → Quota funcionario
select Funcionario_ID, Salario/Desempenho as Quota from funcionario;

# Funcionarios com mais pedidos associados
DELIMITER && 
CREATE PROCEDURE funcionarios_com_mais_pedidos ()
BEGIN 
# τ TotalPedidos desc π F.Funcionario_ID, TotalPedidos γ F.Funcionario_ID; COUNT(T.fk_Pedido_ID_Pedido)→TotalPedidos 
# ( ρ F funcionario left outer join T.fk_Funcionario_Funcionario_ID = F.Funcionario_ID ρ T tem )
select 
    F.Funcionario_ID, 
    COUNT(T.fk_Pedido_ID_Pedido) AS TotalPedidos
from 
	funcionario  F 
left join 
	tem  T
on 
	T.fk_Funcionario_Funcionario_ID = F.Funcionario_ID
group by 
    F.Funcionario_ID 
order by
	TotalPedidos DESC;
END; &&

select * from tem where fk_Funcionario_Funcionario_ID = 1;

#drop procedure funcionarios_com_mais_pedidos;

