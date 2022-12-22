CREATE USER 'gestor'@'localhost';
SET PASSWORD FOR 'gestor'@'localhost' = 'gestor1234';

GRANT SELECT, INSERT ON Amazonia.funcionario TO 'gestor'@'localhost'; # RC01

GRANT SELECT, INSERT ON Amazonia.armazem TO 'gestor'@'localhost'; # RC09