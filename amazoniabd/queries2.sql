use Amazonia;

#JORGE

Select Count(Funcionario_ID)
From Funcionario;

SELECT  c.nome , p.*
FROM ( Pedido AS p
INNER JOIN Cliente AS c ON p.fk_Cliente_ID_Cliente = c.ID_Cliente)
WHERE c.nome= 'Ana Maria';

SELECT a.Nome,f.Nome
FROM ( Armazem AS a
INNER JOIN Funcionario AS f ON  a.Armazem_ID = f.fk_Armazem_Armazem_ID )
WHERE a.Armazem_ID = '2';

#Tigas

select Funcionario_ID, Salario/Desempenho as Quota from Funcionario;

DELIMITER && 
CREATE PROCEDURE items_mais_vendidos ()
BEGIN 
select * from pedidos order by Total limit 10;
END && 
delimiter ;

#Breno

#πfk_Pedido_ID_Pedido (σ fk_Funcionario_Funcionario_ID = id_func (tem)) com qualquer id_func, essa procedure diz a quais pedidos um funcionario esta relacionado
delimiter &&
CREATE PROCEDURE `new_procedure` (IN id_func INT)
BEGIN
SELECT fk_Pedido_ID_Pedido FROM tem where fk_Funcionario_Funcionario_ID = id_func;
END &&
delimiter ;

# π count(*) (Cliente) , diz o número de clientes da empresa
SELECT COUNT(*)
FROM Cliente;


#Tales

delimiter &&
create procedure calc_total()
begin
declare x int;
set x = 1;
banana:
while x < 38 do
update Pedido set total = (select sum(quantidade*valor) as val from contem where fk_Pedido_ID_Pedido = x) where ID_Pedido = x;
set x = x+1;
end while
banana;
end &&
delimiter ;


Delimiter &&
CREATE PROCEDURE `PedFunc` (IN id_ped INT)
BEGIN
SELECT Nome FROM Funcionario where fk_Pedido_ID_Pedido = id_ped;
END &&
delimiter ;

select Nome from Funcionario order by desempenho desc;

SELECT Descricao, count(Item_ID)
FROM Item
INNER JOIN contem ON contem.fk_Item_Item_ID = Item.Item_ID 
group by Item_ID
order by count(Item_ID) desc; 

select count(fk_Item_Item_ID) from contem where fk_Item_Item_ID = Item_ID;






