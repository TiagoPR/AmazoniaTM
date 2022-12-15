use Amazonia;


select Funcionario_ID from Funcionario where Funcionario_ID = fk_Funcionario_Funcionario_ID;

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

select * from Pedido;

select * from contem;

select quantidade as q ,valor as v from contem where fk_Pedido_ID_Pedido = 1;
SELECT *
FROM possui
Group By fk_Armazem_Armazem_ID
ORDER BY fk_Armazem_Armazem_ID
delimiter ;

select quantidade as q ,valor as v ,fk_Pedido_ID_Pedido as ped from contem where fk_Pedido_ID_Pedido = x group by pedido;

select quantidade as q from contem where fk_Pedido_ID_Pedido = 34;

select Funcionario_ID, Salario/Desempenho as Quota from Funcionario;

update Pedido set total = (select sum(quantidade*valor) as val from contem where fk_Pedido_ID_Pedido = 1) where ID_Pedido = 1;

select total from Pedido;

select sum(quantidade*valor) as val from contem where fk_Pedido_ID_Pedido = 1;

update Pedido set total = (select sum(quantidade*valor) as val from contem where fk_Pedido_ID_Pedido = 32) where ID_Pedido = 32;

select Desempenho from Funcionario;

# Trigger sempre que adicionado pedido atualiza o campo `valor`
delimiter &&
CREATE TRIGGER amazonia.total
AFTER
INSERT ON contem  for each row
begin
declare total int;
select Total into total from pedido where NEW.fk_Pedido_ID_Pedido = id_pedido;
update pedido set Total = (select sum(valor * quantidade) from contem where fk_Pedido_ID_Pedido = NEW.fk_Pedido_ID_Pedido) where ID_Pedido = NEW.fk_Pedido_ID_Pedido;
END &&
delimiter ;

drop trigger amazonia.total;