use Amazonia;


select Funcionario_ID from Funcionario where Funcionario_ID = fk_Funcionario_Funcionario_ID;

#π Nome (σ fk_Pedido_ID_Pedido = id_pedc (Funcionario)) com qualquer id_ped, essa procedure diz a quais funcionarios esta relacionado um pedido
Delimiter &&
CREATE PROCEDURE `PedFunc` (IN id_ped INT)
BEGIN
SELECT Nome FROM Funcionario where fk_Pedido_ID_Pedido = id_ped;
END &&
delimiter ;

select Nome from Funcionario order by desempenho desc;

select count(Descricao),fk_Item_Item_ID from Item, contem where Item_ID = fk_Item_Item_ID;

create view top_gastos as
select fk_Cliente_ID_Cliente, sum(total) as gasto
from Pedido
group by fk_Cliente_ID_Cliente;
drop view precoV;
create view precoV as
select fk_Pedido_ID_Pedido,v*c as gasto
from contem
where fk_Pedido_ID_Pedido = 35
group by fk_Pedido_ID_Pedido;


select * from precoV;

select * from Pedido;

select * from top_gastos;

select * from contem;

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




select quantidade as q ,valor as v from contem where fk_Pedido_ID_Pedido = 1;
SELECT *
FROM possui
Group By fk_Armazem_Armazem_ID
ORDER BY fk_Armazem_Armazem_ID
delimiter ;

select quantidade as q ,valor as v ,fk_Pedido_ID_Pedido as ped from contem where fk_Pedido_ID_Pedido = x group by pedido;

#(ρ q←quantidade (π Name (σ 34 = fk_Pedido_ID_Pedido (Employee)))
select quantidade as q from contem where fk_Pedido_ID_Pedido = 34;

select Funcionario_ID, Salario/Desempenho as Quota from Funcionario;

update Pedido set total = (select sum(quantidade*valor) as val from contem where fk_Pedido_ID_Pedido = 1) where ID_Pedido = 1;
 
#(π total (pedido))
select total from Pedido;

 
#(ρ val←sum(quantidade*valor)  (σ 1 = fk_Pedido_ID_Pedido (contem))
select sum(quantidade*valor) as val from contem where fk_Pedido_ID_Pedido = 1;

update Pedido set total = (select sum(quantidade*valor) as val from contem where fk_Pedido_ID_Pedido = 32) where ID_Pedido = 32;

#(π Desempenho (Funcionario))
select Desempenho from Funcionario;
