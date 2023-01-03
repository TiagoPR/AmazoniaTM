create schema Amazonia;
#drop schema Amazonia;
use Amazonia;

-- -----------------------------------------------------
-- Table `Amazonia`.`Armazem`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Amazonia`.`Armazem` (
  `Armazem_ID` INT NOT NULL,
  `Nome` VARCHAR(45) NOT NULL,
  `Localidade` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Armazem_ID`),
  UNIQUE INDEX `Armazem_ID` (`Armazem_ID` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

-- -----------------------------------------------------
-- Table `Amazonia`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Amazonia`.`Cliente` (
  `ID_Cliente` INT NOT NULL,
  `Nome` VARCHAR(45) NOT NULL,
  `Email` VARCHAR(45) NULL DEFAULT NULL,
  `Telemovel` INT NULL DEFAULT NULL,
  `Rua` VARCHAR(45) NULL DEFAULT NULL,
  `Cod_Postal` VARCHAR(45) NULL DEFAULT NULL,
  `Genero` VARCHAR(1) NOT NULL,
  PRIMARY KEY (`ID_Cliente`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

-- -----------------------------------------------------
-- Table `Amazonia`.`Funcionario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Amazonia`.`Funcionario` (
  `Funcionario_ID` INT NOT NULL,
  `Nome` VARCHAR(45) NOT NULL,
  `Tipo` CHAR(1) NOT NULL,
  `Salario` FLOAT NOT NULL,
  `Endereco` VARCHAR(45) NULL DEFAULT NULL,
  `Desempenho` INT NOT NULL,
  `fk_Armazem_Armazem_ID` INT NOT NULL,
  `genero` VARCHAR(1) NOT NULL,
  `data_comeco` DATE NOT NULL,
  `data_nascimento` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`Funcionario_ID`),
  UNIQUE INDEX `Funcionario_ID` (`Funcionario_ID` ASC, `fk_Armazem_Armazem_ID` ASC) VISIBLE,
  INDEX `FK_Funcionario_2` (`fk_Armazem_Armazem_ID` ASC) VISIBLE,
  CONSTRAINT `FK_Funcionario_2`
    FOREIGN KEY (`fk_Armazem_Armazem_ID`)
    REFERENCES `Amazonia`.`Armazem` (`Armazem_ID`)
    ON DELETE RESTRICT)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Amazonia`.`Item`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Amazonia`.`Item` (
  `Item_ID` INT NOT NULL,
  `Preco` FLOAT NOT NULL,
  `Descricao` VARCHAR(45) NOT NULL,
  `Tipo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Item_ID`),
  UNIQUE INDEX `Item_ID` (`Item_ID` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

-- -----------------------------------------------------
-- Table `Amazonia`.`Pedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Amazonia`.`Pedido` (
  `ID_Pedido` INT NOT NULL,
  `Endereco_Entrega` VARCHAR(45) NOT NULL,
  `Cupao` VARCHAR(45) NULL DEFAULT NULL,
  `Estado` VARCHAR(1) NOT NULL,
  `Total` FLOAT ,
  `Data_Entrega` DATE NULL,
  `Data_Pedido` DATE NOT NULL,
  `Data_Envio` DATE NULL,
  `fk_Cliente_ID_Cliente` INT NOT NULL,
  `fk_Armazem_Armazem_ID` INT NOT NULL,
  PRIMARY KEY (`ID_Pedido`),
  UNIQUE INDEX `ID_Pedido` (`ID_Pedido` ASC, `fk_Cliente_ID_Cliente` ASC) VISIBLE,
  INDEX `FK_Pedido_2` (`fk_Cliente_ID_Cliente` ASC) VISIBLE,
  CONSTRAINT `FK_Pedido_1`
    FOREIGN KEY (`fk_Armazem_Armazem_ID`)
    REFERENCES `Amazonia`.`Armazem` (`Armazem_ID`)
    ON DELETE CASCADE,
  CONSTRAINT `FK_Pedido_2`
    FOREIGN KEY (`fk_Cliente_ID_Cliente`)
    REFERENCES `Amazonia`.`Cliente` (`ID_Cliente`)
    ON DELETE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Amazonia`.`contem`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Amazonia`.`contem` (
  `fk_Item_Item_ID` INT NOT NULL,
  `fk_Pedido_ID_Pedido` INT NOT NULL,
  `Quantidade` INT NOT NULL,
  `Valor` FLOAT NOT NULL,
  `IVA` INT NOT NULL,
  PRIMARY KEY (`fk_Item_Item_ID`, `fk_Pedido_ID_Pedido`),
  UNIQUE INDEX `fk_Item_Item_ID` (`fk_Item_Item_ID` ASC, `fk_Pedido_ID_Pedido` ASC) VISIBLE,
  INDEX `FK_contem_2` (`fk_Pedido_ID_Pedido` ASC) VISIBLE,
  CONSTRAINT `FK_contem_1`
    FOREIGN KEY (`fk_Item_Item_ID`)
    REFERENCES `Amazonia`.`Item` (`Item_ID`)
    ON DELETE RESTRICT,
  CONSTRAINT `FK_contem_2`
    FOREIGN KEY (`fk_Pedido_ID_Pedido`)
    REFERENCES `Amazonia`.`Pedido` (`ID_Pedido`)
    ON DELETE RESTRICT)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Amazonia`.`possui`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Amazonia`.`possui` (
  `pos` VARCHAR(4) NOT NULL,
  `stock` INT NOT NULL,
  `fk_Armazem_Armazem_ID` INT NOT NULL,
  `fk_Item_Item_ID` INT NOT NULL,
  PRIMARY KEY (`fk_Armazem_Armazem_ID`, `fk_Item_Item_ID`),
  INDEX `fk_possui_Armazem1_idx` (`fk_Armazem_Armazem_ID` ASC) VISIBLE,
  INDEX `fk_possui_Item1_idx` (`fk_Item_Item_ID` ASC) VISIBLE,
  CONSTRAINT `fk_possui_Armazem1`
    FOREIGN KEY (`fk_Armazem_Armazem_ID`)
    REFERENCES `Amazonia`.`Armazem` (`Armazem_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_possui_Item1`
    FOREIGN KEY (`fk_Item_Item_ID`)
    REFERENCES `Amazonia`.`Item` (`Item_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Amazonia`.`tem`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Amazonia`.`tem` (
  `fk_Funcionario_Funcionario_ID` INT NOT NULL,
  `fk_Pedido_ID_Pedido` INT NOT NULL,
  PRIMARY KEY (`fk_Funcionario_Funcionario_ID`, `fk_Pedido_ID_Pedido`),
  UNIQUE INDEX `fk_Funcionario_Funcionario_ID` (`fk_Funcionario_Funcionario_ID` ASC, `fk_Pedido_ID_Pedido` ASC) VISIBLE,
  INDEX `FK_tem_2` (`fk_Pedido_ID_Pedido` ASC) VISIBLE,
  CONSTRAINT `FK_tem_1`
    FOREIGN KEY (`fk_Funcionario_Funcionario_ID`)
    REFERENCES `Amazonia`.`Funcionario` (`Funcionario_ID`)
    ON DELETE RESTRICT,
  CONSTRAINT `FK_tem_2`
    FOREIGN KEY (`fk_Pedido_ID_Pedido`)
    REFERENCES `Amazonia`.`Pedido` (`ID_Pedido`)
    ON DELETE RESTRICT)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;




# Trigger sempre que adicionado pedido atualiza o campo `valor`

delimiter &&
CREATE TRIGGER Amazonia.total
AFTER
INSERT ON contem  for each row
begin
declare total int;
declare cupao1 varchar(9);
select Total into total 
from Pedido 
where NEW.fk_Pedido_ID_Pedido = id_Pedido;
select Cupao into cupao1 
from Pedido 
where new.fk_Pedido_ID_Pedido = id_Pedido;
if cupao1 = null then
update Pedido set Total = (select sum(valor * quantidade) 
from contem where fk_Pedido_ID_Pedido = NEW.fk_Pedido_ID_Pedido) 
where ID_Pedido = NEW.fk_Pedido_ID_Pedido;
else
update Pedido set Total = (select sum(valor * quantidade)*0.8 
from contem where fk_Pedido_ID_Pedido = NEW.fk_Pedido_ID_Pedido) 
where ID_Pedido = NEW.fk_Pedido_ID_Pedido;
end if;
END &&
delimiter ;


