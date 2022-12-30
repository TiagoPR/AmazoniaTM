create schema Amazonia;
# drop schema Amazonia;
use Amazonia;

CREATE TABLE Pedido (
    ID_Pedido INTEGER PRIMARY KEY,
    Endereco_Entrega VARCHAR(45),
    Cupao VARCHAR(9),
    Estado VARCHAR(1),
    Total FLOAT,
    Data_Entrega DATE,
    Data_Pedido DATE,
    Data_Envio DATE,
    fk_Cliente_ID_Cliente INTEGER,
    fk_Armazem_Armazem_ID integer,
    UNIQUE (ID_Pedido)
);


CREATE TABLE Cliente (
    ID_Cliente INTEGER PRIMARY KEY,
    Nome VARCHAR(45),
    Email VARCHAR(45),
    Telemovel INTEGER,
    Rua VARCHAR(45),
    Cod_Postal varchar(8)
);
alter table Cliente add column Genero varchar(1);

CREATE TABLE Item (
    Item_ID INTEGER PRIMARY KEY UNIQUE,
    Preco FLOAT,
    Tipo VARCHAR(45),
    Descricao VARCHAR(45)
);
#alter table Item add column Tipo varchar(45);

CREATE TABLE Funcionario (
    Funcionario_ID INTEGER PRIMARY KEY,
    Nome VARCHAR(45),
    Tipo CHAR,
    Salario FLOAT,
    Endereco VARCHAR(45),
    Desempenho INTEGER,
    fk_Armazem_Armazem_ID INTEGER,
    UNIQUE (Funcionario_ID, fk_Armazem_Armazem_ID)
);
alter table Funcionario add column data_nascimento date;
alter table Funcionario add column data_comeco date;
alter table Funcionario add column genero varchar(1);
CREATE TABLE Armazem (
    Armazem_ID INTEGER PRIMARY KEY UNIQUE,
    Nome VARCHAR(45),
    Localidade VARCHAR(45)
);

CREATE TABLE tem (
    fk_Funcionario_Funcionario_ID INTEGER,
    fk_Pedido_ID_Pedido INTEGER,
    PRIMARY KEY (fk_Funcionario_Funcionario_ID, fk_Pedido_ID_Pedido),
    UNIQUE (fk_Funcionario_Funcionario_ID, fk_Pedido_ID_Pedido)
);

CREATE TABLE contem (
    fk_Item_Item_ID INTEGER,
    fk_Pedido_ID_Pedido INTEGER,
    Quantidade INTEGER,
    Valor FLOAT,
    IVA INTEGER,
    PRIMARY KEY (fk_Item_Item_ID, fk_Pedido_ID_Pedido),
    UNIQUE (fk_Item_Item_ID, fk_Pedido_ID_Pedido)
);

CREATE TABLE possui (
	pos varchar(4),
    stock int,
    fk_Armazem_Armazem_ID INTEGER,
    fk_Item_Item_ID INTEGER,
    PRIMARY KEY (fk_Armazem_Armazem_ID, fk_Item_Item_ID),
    UNIQUE (fk_Armazem_Armazem_ID, fk_Item_Item_ID)
);
 
ALTER TABLE Pedido ADD CONSTRAINT FK_Pedido_2
    FOREIGN KEY (fk_Cliente_ID_Cliente)
    REFERENCES Cliente (ID_Cliente)
    ON DELETE CASCADE;
    
ALTER TABLE Pedido ADD CONSTRAINT FK_Pedido_1
    FOREIGN KEY (fk_Armazem_Armazem_ID)
    REFERENCES Armazem (Armazem_ID)
    ON DELETE CASCADE;
 
ALTER TABLE Funcionario ADD CONSTRAINT FK_Funcionario_2
    FOREIGN KEY (fk_Armazem_Armazem_ID)
    REFERENCES Armazem (Armazem_ID)
    ON DELETE RESTRICT;
 
ALTER TABLE tem ADD CONSTRAINT FK_tem_1
    FOREIGN KEY (fk_Funcionario_Funcionario_ID)
    REFERENCES Funcionario (Funcionario_ID)
    ON DELETE RESTRICT;
 
ALTER TABLE tem ADD CONSTRAINT FK_tem_2
    FOREIGN KEY (fk_Pedido_ID_Pedido)
    REFERENCES Pedido (ID_Pedido)
    ON DELETE RESTRICT;
 
ALTER TABLE contem ADD CONSTRAINT FK_contem_1
    FOREIGN KEY (fk_Item_Item_ID)
    REFERENCES Item (Item_ID)
    ON DELETE RESTRICT;
 
ALTER TABLE contem ADD CONSTRAINT FK_contem_2
    FOREIGN KEY (fk_Pedido_ID_Pedido)
    REFERENCES Pedido (ID_Pedido)
    ON DELETE RESTRICT;
 
ALTER TABLE possui ADD CONSTRAINT FK_possui_1
    FOREIGN KEY (fk_Armazem_Armazem_ID)
    REFERENCES Armazem (Armazem_ID)
    ON DELETE RESTRICT;
 
ALTER TABLE possui ADD CONSTRAINT FK_possui_2
    FOREIGN KEY (fk_Item_Item_ID)
    REFERENCES Item (Item_ID)
    ON DELETE RESTRICT;
    
# Trigger sempre que adicionado pedido atualiza o campo `valor`
delimiter &&
CREATE TRIGGER Amazonia.total
AFTER
INSERT ON contem  for each row
begin
declare total int;
declare cupao1 varchar(9);
select Total into total from Pedido where NEW.fk_Pedido_ID_Pedido = id_Pedido;
select Cupao into cupao1 from Pedido;
if cupao1 = null then
update Pedido set Total = (select sum(valor * quantidade) from contem where fk_Pedido_ID_Pedido = NEW.fk_Pedido_ID_Pedido) where ID_Pedido = NEW.fk_Pedido_ID_Pedido;
else
update Pedido set Total = (select sum(valor * quantidade)*0.8 from contem where fk_Pedido_ID_Pedido = NEW.fk_Pedido_ID_Pedido) where ID_Pedido = NEW.fk_Pedido_ID_Pedido;
end if;
END &&
delimiter ;