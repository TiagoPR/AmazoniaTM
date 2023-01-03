use Amazonia;

#Conta quantos funcionarios Trabalham na AmazoniaTM
Select Count(Funcionario_ID)
From Funcionario;

#Seleciona os Pedidos de um Cliente especifico
SELECT  c.nome , p.*
FROM ( Pedido AS p
INNER JOIN Cliente AS c ON p.fk_Cliente_ID_Cliente = c.ID_Cliente)
WHERE c.nome= 'Ana Maria';

#Seleciona os funcionarios de um determinado Armazem
SELECT a.Nome,f.Nome
FROM ( Armazem AS a
INNER JOIN Funcionario AS f ON  a.Armazem_ID = f.fk_Armazem_Armazem_ID )
WHERE a.Armazem_ID = '2';

# essa procedure diz a quais pedidos um funcionario esta relacionado
delimiter &&
CREATE PROCEDURE `PedFunc` (IN id_func INT)
BEGIN
SELECT fk_Pedido_ID_Pedido FROM tem where fk_Funcionario_Funcionario_ID = id_func;
END &&
delimiter ;

#Numero de Clientes da AmazoniaTM
SELECT COUNT(*)
FROM Cliente;

#ordenação dos funcionarios por desempenho
select Nome from Funcionario order by desempenho desc;

#Items mais vendidos por pedido nao quantidade
SELECT Descricao, count(Item_ID)
FROM Item
INNER JOIN contem ON contem.fk_Item_Item_ID = Item.Item_ID 
group by Item_ID
order by count(Item_ID) desc;

#Total ganho por cada Armazem
select sum(total),Armazem_ID
from Pedido
inner join Armazem on Pedido.fk_Armazem_Armazem_ID = Armazem.Armazem_ID
group by Armazem.Armazem_ID
order by sum(total) desc;

#Numero de Pedidos por Armazem
select sum(total),Armazem_ID
from Pedido
inner join Armazem on Pedido.fk_Armazem_Armazem_ID = Armazem.Armazem_ID
group by Armazem.Armazem_ID
order by sum(total) desc;

#View que seleciona os clientes que mais gastaram
drop view if exists top_gastos;
create view top_gastos as
select fk_Cliente_ID_Cliente, sum(total) as gasto
from Pedido
group by fk_Cliente_ID_Cliente;

#seleciona quantidade de um item de determinado pedido naquela compra
select quantidade as q from contem where fk_Pedido_ID_Pedido = 34;

#Seleciona o preço do peido
select total from Pedido;

# Conhecer o armazém em que o pedido está relacionado 
DELIMITER &&
CREATE FUNCTION armazem_do_pedido ( id_ped INT )
RETURNS INT
DETERMINISTIC
BEGIN
   return (select fk_Armazem_Armazem_ID from Pedido where ID_Pedido = id_ped);
END; &&
delimiter ;

# Identificar os items mais vendidos por quantidade
DELIMITER && 
CREATE PROCEDURE items_mais_vendidos ()
# τ TotalItems desc π I.Item_ID, TotalPedidos γ I.Item_ID; SUM(C.Quantidade)→TotalItems 
# ( ρ I item left outer join C.fk_Item_Item_ID = I.Item_ID ρ C contem )
BEGIN 
select 
    I.Item_ID, 
    SUM(C.Quantidade) AS TotalItems
from 
	Item  I 
left join 
	contem  C
on 
	C.fk_Item_Item_ID = I.Item_ID
group by 
    I.Item_ID 
order by
	TotalItems DESC;
END && 
delimiter ;

# Obter uma relação entre salário e desempenho de cada funcionarios por tipo – Tigas
select Funcionario_ID, Salario/Desempenho as Quota from Funcionario;

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
	Funcionario  F 
left join 
	tem  T
on 
	T.fk_Funcionario_Funcionario_ID = F.Funcionario_ID
group by 
    F.Funcionario_ID 
order by
	TotalPedidos DESC;
END &&
delimiter ;

#queries genericas

select * from possui;




















































