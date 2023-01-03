CREATE USER 'gestor'@'localhost';
SET PASSWORD FOR 'gestor'@'localhost' = 'B@naana1234';
GRANT SELECT, INSERT ON Amazonia.funcionario TO 'gestor'@'localhost'; # RC01
GRANT UPDATE (Salario, Desempenho) 
	ON Amazonia.funcionario TO 'gestor'@'localhost';
GRANT SELECT, INSERT, UPDATE ON Amazonia.armazem TO 'gestor'@'localhost'; # RC09
GRANT SELECT ON Amazonia.Pedido TO 'gestor'@'localhost'; # RC05
GRANT UPDATE (Estado, Data_Entrega, Data_Envio) 
	ON Amazonia.Pedido TO 'gestor'@'localhost';
GRANT SELECT, INSERT, UPDATE ON Amazonia.Item TO 'gestor'@'localhost'; # RC05
GRANT SELECT, INSERT, UPDATE ON Amazonia.possui TO 'gestor'@'localhost'; # RC05
CREATE USER 'cliente'@'localhost';
SET PASSWORD FOR 'cliente'@'localhost' = 'cliente1234';
GRANT UPDATE, INSERT ON Amazonia.Cliente TO 'cliente'@'localhost'; # RC02
CREATE USER 'JeffersonBazos'@'localhost';
SET PASSWORD FOR 'JeffersonBazos'@'localhost' = 'JeffersonBazos1234';
GRANT ALL ON *.* TO 'JeffersonBazos'@'localhost'; #RC 07
CREATE USER 'funcionario'@'localhost';
SET PASSWORD FOR 'funcionario'@'localhost' = 'funcionario1234';
GRANT UPDATE (Endereco) 
	ON Amazonia.funcionario TO 'funcionario'@'localhost';
CREATE USER 'distribuidor'@'localhost';
SET PASSWORD FOR 'distribuidor'@'localhost' = 'distribuidor1234';
GRANT UPDATE (Estado, Data_Entrega, Data_Pedido, Data_Envio) 
	ON Amazonia.Pedido TO 'distribuidor'@'localhost';
grant select on Amazonia.Pedido to 'funcionario'@'localhost';


