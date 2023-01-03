Insert into Armazem (Armazem_ID, Nome, Localidade)
values
(1,"Armazem de Braga","Norte"),
(2,"Armazem de Lisboa","Sul"),
(3,"Armazem de Coimbra","Centro"),
(4,"Armazem do Porto", "Norte");


Insert into Item(Item_ID, Preco, Tipo, Descricao)
values
(1,20,"Informatica","Earbuds Salozne 3.12"),
(2,100,"EletroDomesticos","Frigorifico Apar certificado C"),
(3,15,"Jogos","Adivinha o assasino"),
(4,40,"Mobília","Mesa de escritorio"),
(5,60,"Utensilios","Garrafa termica"),
(6,600,"Limpeza","Aspirador Romba"),
(7,1,"Comida","Chicletes Gumball"),
(8,300,"Mobília","Estante"),
(9,200,"EletroDomesticos","Fogao eletrico"),
(10,150,"Informatica","Monitor MSX1 144hz"),
(11,20,"Jogos","Tarzan"),
(12,20,"Utensilios","Torradeira NICS"),
(13,8,"Limpeza","Insecticida"),
(14,5,"Comida","Feijoes magicos de varios sabores");

Insert into Funcionario 
(Funcionario_ID, Nome, Tipo,Salario,Endereco,Desempenho,fk_Armazem_Armazem_ID,data_nascimento,data_comeco,genero)
values
(1,"Tata","G",1000,"Rua da mae nova",10,1,"1900-02-02","2019-01-01","F"),
(2,"Andre Costa","D",499,"Rua do pai novo",7,1,"1900-03-02","2019-01-02","M"),
(3,"Antonio da silva","D",498,"Rua do altar",3,1,"1900-03-01","2019-01-03","M"),
(4,"Bruno Marren","D",497,"Rua nova",2,1,"1900-04-02","2019-01-03","M"),
(5,"Brinc Saul","D",496,"Rua nova 2",1,1,"1900-03-04","2019-01-05","M"),
(6,"Mike Ermentraut","D",495,"Rua velha",9,1,"2021-03-01","2021-03-02","M"),
(7,"Walter White","D",9999,"308 Negro Arroyo Lane",10,1,"1922-07-04","2019-01-06","M"),
(8,"Cris New","D",494,"Rua pequena",5,1,"1999-10-06","2019-01-08","M"),
(9,"Denis Alto","D",493,"Rua grande",0,1,"1900-03-05","2019-01-10","M"),
(10,"Slipping Jimmy","D",10,"Alburquerque lane",8,1,"1900-03-12","2019-01-20","M"),
(11,"Saul Goodman","D",10000,"New Mexico",10,1,"1900-03-22","2019-01-11","M"),
(12,"Tuco Salamanca","R",492,"Rua da favela",4,1,"1900-03-30","2019-01-13","M"),
(13,"Gey Salamanca","R",492,"Rua da favela do rio",9,1,"1900-03-11","2019-01-02","M"),
(14,"Artemui Flor","R",491,"Rua",1,1,"1933-05-22","2019-01-02","M"),
(15,"Escova Macahdo","R",100,"Street",4,1,"1933-05-11","2019-01-02","F"),
(16,"Priscila Rita","R",40,"Calle rua",10,1,"1933-06-22","2020-01-02","F"),
(17,"Bruna Marquezine","R",100000,"Rua Peixoto",1,1,"1933-05-24","2019-01-22","F"),
(18,"Skyler White","R",0,"308 Negro Arroyo Lane",0,1,"1933-05-11","2019-01-31","F"),
(19,"Yale Pray","R",6437287,"Rua do Rico",1,1,"1933-05-10","2019-01-02","M"),
(20,"ZZendaya Martinx","R",9999,"Rua d",1,1,"1933-05-15","2019-01-04","M"),
(21,"Ultimo Funcionario","R",3,"Rua da favela",10,1,"1933-05-11","2019-01-02","M");

Insert into Funcionario 
(Funcionario_ID, Nome, Tipo,Salario, Endereco, genero, data_nascimento,  data_comeco,Desempenho,fk_Armazem_Armazem_ID)
values
(22,"Carlos Almondega", 'D',1000, "Rua da fonte seca" , 'M',"1998-11-20","2021-11-20",8,2),
(23,"Carlos Feijão", 'D',1000, "Rua da fonte molhada" , 'M',"2002-07-15","2021-12-10",9,2),
(24,"Carlos Arroz", 'D',780, "Rua da fonte com areia" , 'M',"2000-07-20","2021-11-20",7,2),
(25,"Carlos Feijoada", 'D',800, "Rua da fonte ", 'M',"1997-12-15","2020-11-17", 6,2),
(26,"Carlos Costelas", 'D',900, "Rua da abelha " , 'M',"1995-11-05","2020-11-20",5,2),
(27,"Maria Detergente", 'D',800, "Rua da Joaninha " , 'F',"1996-02-02","2020-07-12",5,2),
(28,"Maria Foguete", 'D',780, "Rua da formiga" , 'F',"1997-02-12","2020-07-07",6,2),
(29,"Maria Mesa", 'D',980, "Rua da porta" , 'F',"1999-03-30","2020-06-07",4,2),
(30,"Maria Airfryer", 'D',1080, "Rua da Gaveta" , 'F',"1993-05-29","2020-04-03",10,2),
(31,"Maria Molho", 'D',1180, "Rua do Copo" , 'F',"1992-03-19","2021-03-02",9,2),
(32,"Antonio Almondega", 'R',1000, "Rua da fonte chata" , 'M',"1998-12-10","2021-11-10",8,2),
(33,"Antonio Feijão", 'R',1100, "Rua da fonte malhada" , 'M',"2001-02-13","2021-12-10",9,2),
(34,"Antonio Arroz", 'R',1080, "Rua da fonte com Agua" , 'M',"2001-08-10","2022-10-10",2,2),
(35,"Antonio Feijoada", 'R',800, "Rua da fonte ", 'M',"1997-12-12","2020-11-17", 7,2),
(36,"Carlos Cambalhota", 'R',900, "Rua da abelhinha " , 'M',"1995-12-15","2020-11-21",3,2),
(37,"Antonia Detergente", 'R',1200, "Rua da Joana " , 'F',"1996-02-12","2020-07-05",5,2),
(38,"Antonela Foguete", 'R',1070, "Rua da formigueira" , 'F',"1998-12-22","2021-07-17",9,2),
(39,"Maria Vegana", 'R',990, "Rua do forno" , 'F',"1998-04-26","2021-05-03",7,2),
(40,"Joana Airfryer", 'D',1180, "Rua do Hexa" , 'F',"1992-08-19","2021-09-13",10,2),
(41,"Maria Dripada", 'D',880, "Rua do Copo Vazio" , 'F',"1995-05-29","2021-02-03",9,2),
(42,"Jefferson Bazos", 'D',1880, "Rua da fonte seca" , 'G',"1964-01-12","2018-01-01",10,2);

INSERT INTO Funcionario 
(Funcionario_ID, Nome,Tipo,Salario, Desempenho,Endereco,fk_Armazem_Armazem_ID,genero,data_nascimento,data_comeco)
 VALUES
(43,'Tigas Rodrigues','G',3000,10,'Rua da Capela',3,'M','1965-01-18','2022-10-21'),
(44,'João Moreira','D',705,9,'Rua da Travessa',3,'M','1965-02-18','2022-01-01'),
(45,'Carlos Silva','D',705,8,'Rua 25 de abril',3,'M','1965-03-18','2022-02-02'),
(46,'Josefina Andrade','D',705,7,'Avenida Central',3,'F','1965-04-18','2022-03-03'),
(47,'José Pereira','D',705,6,'Rua das Veigas',3,'M','1965-05-18','2022-04-04'), 
(48,'Carolina Peixoto','D',705,5,'Rua de Belomonte',3,'F','1965-06-18','2022-04-04'),
(49,'António Ferreira','D',705,4,'Rua do Almada',3,'M','1965-07-18','2022-05-05'),
(50,'Catarina Cruz','D',705,3,'Rua dos Caldeireiros',3,'F','1965-08-18','2022-06-06'),
(51,'Pedro Meireles','D',705,2,'Rua das Carmelitas',3,'M','1965-09-18','2022-07-07'),
(52,'Ricardo Carvalho','D',705,1,'Rua do Carvalhido',3,'M','1965-10-18','2022-08-08'),
(53,'Anabela Pereira','D',705,0,'Rua de Camões',3,'F','1965-11-18','2022-09-09'),
(54,'Rafael Martins','R', 705, 1,'Avenida Central',3,'M','1965-12-18','2022-10-10'),
(55,'Bruno Marques','R',705, 2,'Rua de Camões ',3,'M','1966-01-18','2022-11-11'),
(56,'Joel Lima','R',705,3,'Avenida da Liberdade ',3,'M','1966-02-18','2022-11-12'),
(57,'Maria Peixoto','R',705,4,'Travessa do Carmo ',3,'F','1966-03-18','2022-11-13'),
(58,'Sara Gonçaves','R',705,5,'Rua da Laje ',3,'F','1966-04-18','2022-11-14'),
(59,'Ricardo Oliveira','R',705,6,'Rua da Boavista',3,'M','1966-05-18','2022-11-15'),
(60,'Carolina Pinto','R',705,7,'Travessa do Carmo ',3,'F','1966-06-18','2022-11-16'),
(61,'Daniela Silva','R',705,8,'Rua do Souto ',3,'F','1966-07-18','2022-11-17'),
(62,'Paulo Barros', 'R' ,705, 9,'Praçeta do Vilar',3,'M','1966-07-19','2022-11-18'),
(63,'Débora Morais','R',999,10,'Rua de Penelas',3,'F','1966-07-21','2022-11-18'),
(64,"David Abreu","R",999,11,"Rua do Salitre",3,'M','1966-07-25','2022-11-18');

INSERT INTO Funcionario 
(Funcionario_ID, Nome,Tipo,Salario, Desempenho,Endereco,fk_Armazem_Armazem_ID,genero,data_nascimento,data_comeco)
 VALUES
(65,'Tigas Rodrigues','G',3000,10,'Rua da Capela',4,'M','1965-01-18','2022-10-21'),
(66,'João Moreira','D',705,9,'Rua da Travessa',4,'M','1965-02-18','2022-01-01'),
(67,'Carlos Silva','D',705,8,'Rua 25 de abril',4,'M','1965-03-18','2022-02-02'),
(68,'Josefina Andrade','D',705,7,'Avenida Central',4,'F','1965-04-18','2022-03-03'),
(69,'José Pereira','D',705,6,'Rua das Veigas',4,'M','1965-05-18','2022-04-04'), 
(70,'Carolina Peixoto','D',705,5,'Rua de Belomonte',4,'F','1965-06-18','2022-04-04'),
(71,'António Ferreira','D',705,4,'Rua do Almada',4,'M','1965-07-18','2022-05-05'),
(72,'Catarina Cruz','D',705,3,'Rua dos Caldeireiros',4,'F','1965-08-18','2022-06-06'),
(73,'Pedro Meireles','D',705,2,'Rua das Carmelitas',4,'M','1965-09-18','2022-07-07'),
(74,'Ricardo Carvalho','D',705,1,'Rua do Carvalhido',4,'M','1965-10-18','2022-08-08'),
(75,'Anabela Pereira','D',705,0,'Rua de Camões',4,'F','1965-11-18','2022-09-09'),
(76,'Rafael Martins','R', 705, 1,'Avenida Central',4,'M','1965-12-18','2022-10-10'),
(77,'Bruno Marques','R',705, 2,'Rua de Camões ',4,'M','1966-01-18','2022-11-11'),
(78,'Joel Lima','R',705,3,'Avenida da Liberdade ',4,'M','1966-02-18','2022-11-12'),
(79,'Maria Peixoto','R',705,4,'Travessa do Carmo ',4,'F','1966-03-18','2022-11-13'),
(80,'Sara Gonçaves','R',705,5,'Rua da Laje ',4,'F','1966-04-18','2022-11-14'),
(81,'Ricardo Oliveira','R',705,6,'Rua da Boavista',4,'M','1966-05-18','2022-11-15'),
(82,'Carolina Pinto','R',705,7,'Travessa do Carmo ',4,'F','1966-06-18','2022-11-16'),
(83,'Daniela Silva','R',705,8,'Rua do Souto ',4,'F','1966-07-18','2022-11-17'),
(84,'Paulo Barros', 'R' ,705, 9,'Praçeta do Vilar',4,'M','1966-07-19','2022-11-18'),
(85,'Débora Morais','R',999,10,'Rua de Penelas',4,'F','1966-07-21','2022-11-18'),
(86,"David Abreu","R",999,11,"Rua do Salitre",4,'M','1966-07-25','2022-11-18');

insert into Cliente (ID_Cliente,Nome,Email,Telemovel,Rua,Cod_Postal,Genero)
	values
    (31,"Maria do carmo","maria1234@hotmail.com",934716999,"rua da casa nova","4715-222","F"),
    (32,"Jose fonseca","jfonseca@hotmail.com",934714299,"rua da castelo nova","4735-422","M"),
    (33,"Alberto Sampaio","albertos@gamil.com",934137999,"rua do telemovel","4215-286","M"),
    (34,"Maria do carmo","maria1234@hotmail.com",934716999,"rua da casa nova","4715-222","F"),
    (35,"Brenin Costa","bmarrinho@hotmail.com.br",935706999,"rua do rio baixo","4215-212","M"),
    (36,"Monica de Vento","monicavento@yahoo.com",938173999,"avenida da rodovia","4018-222","F"),
    (37,"Jose veloh","jmveloh@hotmail.com",934719179,"rua da casa nova velha","7113-222","M"),
    (38,"Ana oliveira","analo@hotmail.com",999916999,"rua da oliveira","4115-222","F"),
    (39,"Tiagas Banana","tiagas@hotmail.com",934216999,"rua da casa nova","4715-222","M");

Insert into Cliente(ID_Cliente, Nome, Email,Telemovel,Rua,Cod_Postal,genero)
values
(11,"Joao Silva","joao@gmail.com",919123156,"Rua da lagoa","4311-231","M"),
(12,"Fernanda Ferreira","fernanda@gmail.com",939523166,"Rua das fontes","4241-033","F"),
(13,"Ramona Alba","ramona23@gmail.com",919123156,"Rua da cruz","4421-713","F"),
(14,"Gil Dias","gil98@gmail.com",942123215,"Rua de benfica","4562-263","M"),
(15,"Diogo Gonçalves","goncalves22@gmail.com",962113475,"Rua Garret","4621-453","M"),
(16,"Carolina Silva","carol@gmail.com",935122142,"Rua dos herois","4621-095","F"),
(17,"Mateus Oliveira","mateuoliv23@gmail.com",927523684,"Rua dos bacolheiros","4284-233","M"),
(18,"Mariana Soares","mariana596@gmail.com",955623966,"Rua do carmo","4621-111","F"),
(19,"Joana Rodrigues","joanar3@gmail.com",975343222,"Rua da betesga","4232-097","F"),
(20,"Roberto Guimarães","robertojj@gmail.com",958123677,"Rua da satelite","4567-231","M"),
(21,"Carlos Coelho","coelhinho44@gmail.com",945341564,"Rua Ferreira","4520-087","M");

Insert into Cliente (ID_Cliente, Nome, Email,Telemovel,Rua,Cod_Postal,Genero)
values
(1,'Ana Maria','Cliente1@gmail.com',911111110,'Rua da Capela','4700-800','F'),
(2,'Zeca Afonso','Cliente2@gmail.com',911111119,'Rua da Boavista','4701-800','M'),
(3,'Joana Lopes','Cliente3@gmail.com',911111118,'Rua da Pedrinha','4702-808','F'),
(4,'Joao Carlos','Cliente4@gmail.com',911111117,'Rua dos Barbosas','4703-807','M'),
(5,'Jessica Gata','Cliente5@gmail.com',911111116,'Rua da Pedreira','4704-806','F'),
(6,'Anabela Silva','Cliente6@gmail.com',911111115,'Rua da Caparica','4705-805','F'),
(7,'Tiago Alberto','Cliente7@gmail.com',911111114,'Rua 5 de Outubro','4706-804','M'),
(8,'Antonio Costa','Cliente8@gmail.com',911111113,'Rua dos Capelistas','4707-803','M'),
(9,'Durao Barroso','Cliente9@gmail.com',91111112,'Rua dos Irmaos','4708-802','M'),
(10,'Maria Pinto','Cliente10@gmail.com',911111111,'Rua Antonio Padre Vieira','4709-801','F');

Insert into Cliente (ID_Cliente, Nome, Email,Telemovel,Rua,Cod_Postal, Genero)
values
(40,"Brening","marraob@gmail.com",987239012,"Rua da mae nova","4715-222","M"),
(22,"Andre Lama","andrelana@gmail.com",123456789,"Rua do pai novo","4718-212","M"),
(23,"Antonela da silva","antonela@gmail.com",234567891,"Rua da fonte","4762-123","F"),
(24,"Bruno Marrão","brumarrao@gmail.com",102938475,"Rua nova","4213-123","M"),
(25,"Brincadeira Saul","brincsaul@gmail.com",657483912,"Rua nova 2","4980-432","M"),
(26,"Mikaela Jakson","mikjak@gmail.com",495230123,"Rua velha","9101-032","F"),
(27,"Waltera Wow","waltwow@gmail.com",999999999,"308 Negro Arroyo Lane","9234-321","F"),
(28,"Wala Wow","walawow@gmail.com",999992999,"302 Negro Arroyo Lane","9234-322","F"),
(29,"Mikael Jakson","mikjak@gmail.com",495222123,"Rua velhaaa","9101-039","M"),
(30,"Mikaelison Jakson","miklisonjak@gmail.com",491222123,"Rua novaa","9121-039","M");

Insert into Pedido (ID_Pedido, Endereco_Entrega, Cupao, Estado,  Data_Entrega, Data_Pedido, Data_envio, fk_Cliente_ID_Cliente,fk_Armazem_Armazem_ID)
values
(33,"rua das flores novas",null,"P",null,"2021-01-01",null,22,4),
(34,"rua das casas neu",null,"P",null,"2021-03-11",null,15,4),
(35,"rua das alheiras","NATAL2023","E","2022-01-01","2021-01-01","2021-06-06",11,4),
(36,"rua das ",null,"D",null,"2022-10-01","2022-10-02",22,4),
(37,"rua azul",null,"D",null,"2022-03-22","2022-03-31",22,4);

Insert into Pedido (ID_Pedido, Endereco_Entrega, Cupao,Estado,Data_Entrega,Data_Pedido,Data_Envio,fk_Cliente_ID_Cliente,fk_Armazem_Armazem_ID)
values 
(1,"Rua Doutor Damasceno Ferreiro","NATAL2023","P",NULL,"2023-01-01",NULL,1,1),
(2,"Rua da ponte",NULL,"E","2023-01-03","2023-01-02","2023-01-03",2,1);



Insert into Pedido (ID_Pedido, Endereco_Entrega, Cupao,Estado,Data_Entrega,Data_Pedido,Data_Envio,fk_Cliente_ID_Cliente,fk_Armazem_Armazem_ID)
values 
(3,"Rua da fonte",NULL,"E","2023-01-05","2023-01-04","2023-01-05",3,1),
(4,"Rua da fonte seca ",NULL,"D",NULL,"2023-01-02","2023-01-03",4,1),
(5,"Rua da fonte molhada ","PASCO2022","D",NULL,"2023-02-04","2023-02-05",5,1),
(6,"Rua das fontes molhadas ",NULL,"E","2023-01-05","2023-01-04","2023-01-05",6,1),
(7,"Rua das fontes secas ",NULL,"E","2023-02-03","2023-02-01","2023-02-02",7,1),
(8,"Rua das fontes não secas ","NATAL2023","E","2023-02-03","2023-02-01","2023-02-01",8,1),
(9,"Rua da fonte não molhada ","PASCO2022","D",NULL,"2023-02-02","2023-02-03",9,1),
(10,"Rua das pontes não molhada",NULL,"E","2023-01-11","2023-01-10","2023-01-11",9,1);

Insert into Pedido (ID_Pedido, Endereco_Entrega, Cupao,Estado,Total,Data_Entrega,Data_Pedido,Data_Envio,fk_Cliente_ID_Cliente,fk_Armazem_Armazem_ID)
values
(11,"Rua da lagoa",null,"E",null,"2021-04-29","2021-04-27","2021-04-27",11,2),
(12,"Rua das fontes","NATAL2022","E",null,"2022-05-10","2022-05-09","2022-05-10",12,2),
(13,"Rua da cruz",null,"P",null,null,"2023-01-09",null,13,2),
(14,"Rua de benfica","PASCO2022","D",null,null,"2023-01-09","2023-01-09",14,2),
(15,"Rua Garret","NATAL2022","E",null,"2022-12-25","2022-12-19","2022-12-21",15,2),
(16,"Rua dos herois","BLACK2022","E",null,"2022-11-12","2022-11-11","2022-12-11",16,2),
(17,"Rua dos bacolheiros",null,"P",null,null,"2022-12-19",null,17,2),
(18,"Rua do carmo","NATAL2022","E",null,"2022-12-25","2022-12-19","2022-12-21",18,2),
(19,"Rua da betesga","PASCO2022","E",null,"2022-04-10","2022-04-09","2022-04-09",19,2),
(20,"Rua da satelite","BLACK2022","D",null,null,"2022-11-30","2022-11-30",20,2),
(21,"Rua Ferreira","NATAL2022","E",null,"2022-12-25","2022-12-19","2022-12-21",21,2);

Insert into Item(Item_ID, Preco, Tipo, Descricao)
values
(15,40,"Informatica","Oculos google AR"),
(16,240,"EletroDomesticos","Forno"),
(17,20,"Jogos","Pictionary"),
(18,40,"Mobília","Cadeira de escritorio"),
(19,10,"Utensilios","Pack de louca"),
(20,31,"Limpeza","Aspirador Stilver");

Insert into Pedido (ID_Pedido, Endereco_Entrega, Cupao,Estado,Total,Data_Entrega,Data_Pedido,Data_Envio,fk_Cliente_ID_Cliente,fk_Armazem_Armazem_ID)
values
(22,'Rua da Capela','BLACK2022', 'E',NULL,"2022-11-10","2022-11-09","2022-11-09",22,3),
(23,'Rua da Capela','BLACK2022', 'E',NULL,"2022-11-11","2022-11-10","2022-11-10",23,3),
(24,'Rua da Pedrinha','BLACK2022','E',NULL,"2022-11-12","2022-11-12","2022-11-12",24,3),
(25,'Rua dos Barbosas','BLACK2022','E',NULL,"2022-11-22","2022-11-21","2022-11-21",25,3),
(26,'Rua da Pedreira','PASCO2022','D',NULL,NULL,"2022-12-01","2022-12-01",26,3),
(27,'Rua da Caparica','PASCO2022','D',NULL,NULL,"2022-12-02","2022-12-02",27,3),
(28,'Rua 5 de Outubro','PASCO2022','D',NULL,NULL,"2022-12-02","2022-12-02",28,3),
(29,'Rua dos Capelistas','PASCO2022','P',NULL,NULL,"2022-12-24",NULL,29,3),
(30,'Rua dos Irmaos','NATAL2023','P',NULL,"2022-11-10","2022-12-25",NULL,30,3),
(31,'Rua Antonio Padre Vieira','NATAL2023','P',NULL,NULL,"2022-12-31",NULL,31,3);


Insert into Pedido (ID_Pedido, Endereco_Entrega, Cupao, Estado,  Data_Entrega, Data_Pedido, Data_envio, fk_Cliente_ID_Cliente,fk_Armazem_Armazem_ID)
values
(32,"rua das flores novas",null,"P",null,"2021-01-01",null,1,4);

Insert into contem (fk_Item_Item_ID, fk_Pedido_ID_Pedido, Quantidade, Valor, IVA)
values
(1,1,2,22,10),
(2,1,1,100,11),
(3,2,1,15,12),
(4,3,5,40,15),
(5,3,10,65,11),
(6,4,1,620,10),
(17,4,1,20,7),
(18,5,10,35,9),
(19,5,10,10,11),
(20,6,10,31,10),
(16,7,50,240,20),
(15,8,2,40,20),
(14,9,100,7,18),
(13,10,100,8,16);

Insert into contem (fk_Item_Item_ID, fk_Pedido_ID_Pedido, Quantidade, Valor, IVA)
values
(11,11,1,20,23),
(3,11,1,10,23),
(14,12,2,5,7),
(7,12,2,1,7),
(8,13,1,350,10),
(9,14,1,200,10),
(19,15,2,10,7),
(1,16,1,25,13),
(6,17,2,550,13),
(10,18,1,150,23),
(3,18,1,15,23),
(16,19,1,240,13),
(4,20,1,40,17),
(8,21,1,300,10),
(10,21,1,150,23);

Insert into contem (fk_Item_Item_ID, fk_Pedido_ID_Pedido, Quantidade, Valor, IVA)
values
(10,22,10,1500,23),
(2,23,20,2000,12),
(14,25,1,5,2),
(13,26,100,800,1),
(19,27,2,20,7),
(16,28,1,240,23),
(15,29,2,80,15),
(4,30,10,400,17),
(11,31,2,40,4),
(10,23,1,150,23),
(6,24,1,600,25),
(6,22,1,600,23),
(14,31,3,15,2),
(19,28,10,100,7);

Insert into contem (fk_Item_Item_ID, fk_Pedido_ID_Pedido, Quantidade, Valor, IVA)
values
(12,33,2,30,23),
(13,33,1,8,23),
(1,34,1,19,23),
(10,35,5,150,23),
(14,35,100,6,1),
(6,36,1000,650,23),
(1,37,1,20,23);

Insert into contem (fk_Item_Item_ID, fk_Pedido_ID_Pedido, Quantidade, Valor, IVA)
values
(12,32,2,30,23);

insert into possui (pos,stock,fk_Armazem_Armazem_ID,fk_Item_Item_ID)
values
("2A",100,1,1),
("2B",1000,1,2),
("2c",1000,1,3),
("2d",1000,1,4),
("2e",100,1,5),
("2f",10,1,6),
("2g",1110,1,7),
("2h",1000,1,8),
("2B",1000,1,9),
("2j",1000,1,10),
("2a",1000,1,11),
("2Bf",10001,1,12),
("2T",100,1,13),
("2G",1000,1,14),
("2Y",10,1,15),
("2A",1001,1,16),
("2Z",1040,1,17),
("2P",1000,1,18),
("2L",1,1,19),
("2M",1000,1,20),
("2A",100,2,1),
("2B",1000,2,2),
("2c",1000,2,3),
("2d",1000,2,4),
("2e",100,2,5),
("2f",10,2,6),
("2g",1110,2,7),
("2h",1000,2,8),
("2B",1000,2,9),
("2j",1000,2,10),
("2a",1000,2,11),
("2Bf",10001,2,12),
("2T",100,2,13),
("2G",1000,2,14),
("2Y",10,2,15),
("2A",1001,2,16),
("2Z",1040,2,17),
("2P",1000,2,18),
("2L",1,2,19),
("2M",1000,2,20),
("2A",100,3,1),
("2B",1000,3,2),
("2c",1000,3,3),
("2d",1000,3,4),
("2e",100,3,5),
("2f",10,3,6),
("2g",1110,3,7),
("2h",1000,3,8),
("2B",1000,3,9),
("2j",1000,3,10),
("2a",1000,3,11),
("2Bf",10001,3,12),
("2T",100,3,13),
("2G",1000,3,14),
("2Y",10,3,15),
("2A",1001,3,16),
("2Z",1040,3,17),
("2P",1000,3,18),
("2L",1,3,19),
("2M",1000,3,20),
("2A",100,4,1),
("2B",1000,4,2),
("2c",1000,4,3),
("2d",1000,4,4),
("2e",100,4,5),
("2f",10,4,6),
("2g",1110,4,7),
("2h",1000,4,8),
("2B",1000,4,9),
("2j",1000,4,10),
("2a",1000,4,11),
("2Bf",10001,4,12),
("2T",100,4,13),
("2G",1000,4,14),
("2Y",10,4,15),
("2A",1001,4,16),
("2Z",1040,4,17),
("2P",1000,4,18),
("2L",1,4,19),
("2M",1000,4,20);
Insert into tem (fk_Funcionario_Funcionario_ID, fk_Pedido_ID_PEDIDO)
values
(1,1),
(2,1),
(12,1),
(1,2),
(3,2),
(13,2),
(1,3),
(4,3),
(14,3),
(1,4),
(5,4),
(15,4),
(1,5),
(6,5),
(16,5),
(1,6),
(7,6),
(17,6),
(1,7),
(8,7),
(18,7),
(1,8),
(9,8),
(19,8),
(1,9),
(10,9),
(20,9),
(1,10),
(11,10),
(21,10);

Insert into tem (fk_Funcionario_Funcionario_ID, fk_Pedido_ID_PEDIDO)
values 
(43,22),
(44,22),
(58,22),
(43,23),
(44,23),
(60,23),
(43,24),
(45,24),
(61,24),
(43,25),
(46,25),
(62,25),
(43,26),
(47,26),
(63,26),
(43,27),
(48,27),
(64,27),
(43,28),
(49,28),
(64,28),
(43,29),
(51,29),
(63,29),
(43,30),
(52,30),
(60,30),
(43,31),
(53,31),
(59,31);

Insert into tem (fk_Funcionario_Funcionario_ID, fk_Pedido_ID_PEDIDO)
values
(42,11),
(41,11),
(31,11),
(42,12),
(40,12),
(30,12),
(42,13),
(39,13),
(29,13),
(42,14),
(38,14),
(28,14),
(42,15),
(37,15),
(27,15),
(42,16),
(36,16),
(26,16),
(42,17),
(35,17),
(25,17),
(42,18),
(34,18),
(24,18),
(42,19),
(33,19),
(23,19),
(42,20),
(32,20),
(22,20),
(42,21),
(41,21),
(31,21);


Insert into tem (fk_Funcionario_Funcionario_ID, fk_Pedido_ID_PEDIDO)
values
(65,33),
(66,33),
(67,34),
(68,34),
(69,35),
(70,36),
(71,36),
(72,37),
(73,37);
