drop procedure InsereContem;

DELIMITER $$
CREATE PROCEDURE InsereContem(IN item INT, IN pedido INT, IN Quantidade INT, IN IVA INT, IN Valor FLOAT)

BEGIN 
declare armazem int;
declare vstock int;
START TRANSACTION;

set armazem = (select fk_Armazem_Armazem_ID from pedido where ID_Pedido = pedido);
set vstock = (select stock from possui where fk_Item_Item_ID = pedido and fk_Armazem_Armazem_ID = armazem);
if vstock - Quantidade  <= 0  then
    rollback;
end if;
update possui
    SET stock = vstock - Quantidade
    WHERE fk_Item_Item_ID = item;
INSERT INTO contem
    (fk_Item_Item_ID, fk_Pedido_ID_Pedido, Quantidade, Valor, IVA)
    VALUES(item,pedido,Quantidade,IVA,Valor);
END $$
DELIMITER ;


