CREATE DATABASE vendas_carros;

USE vendas_carros;

SET SQL_SAFE_UPDATES =0;

SELECT * FROM carros;

CREATE TABLE carros
(
		id int unsigned not null auto_increment,
        veiculo varchar(15) not null,
        ano varchar(4) not null,
        placa varchar(10) not null,
        preco double not null,
        PRIMARY KEY(id)
       
);

INSERT INTO carros(id, veiculo, ano, placa, preco)VALUES(1, 'Corsa', '1999', 'SB0001', '16000');
INSERT INTO carros(veiculo, ano, placa, preco)VALUES('Monza', '1996', 'SB0002', '110000');
INSERT INTO carros(veiculo, ano, placa, preco)VALUES('Uno', '2003', 'SB0003', '8000');
INSERT INTO carros(veiculo, ano, placa, preco)VALUES('Ford Ka', '2016', 'SB0004', '25000');
INSERT INTO carros(veiculo, ano, placa, preco)VALUES('Gol', '2019', 'SB0005', '18000');

SELECT * FROM funcionarios;

CREATE TABLE funcionarios
(
	id int unsigned not null auto_increment,
    nome varchar(40) not null,
    idade varchar(3) not null,
    salario varchar(15) not null,
    setor varchar(25) not null,
    cargo varchar(20) not null,
    PRIMARY KEY(id)
);

ALTER TABLE funcionarios ADD COLUMN id_funcionarios int   not null;
ALTER TABLE funcionarios MODIFY id_funcionarios int unsigned not null;/*Esqueci do unsigned*/
ALTER TABLE funcionarios ADD FOREIGN KEY(id_funcionarios)REFERENCES clientes(id);


INSERT INTO funcionarios(nome, idade, salario, setor, cargo)VALUES('Alysson', '25', '7500', 'TI', 'Administrador Linux');
INSERT INTO funcionarios(nome, idade, salario, setor, cargo)VALUES('Thiago', '33', '6500','Jurídico', 'Direito Comercial');
INSERT INTO funcionarios(nome, idade, salario, setor, cargo)VALUES('Carlos', '23', '3000','RH', 'Recrutador');
INSERT INTO funcionarios(nome, idade, salario, setor, cargo)VALUES('Isabelle', '21', '3600','RH', 'Contabilidade');
INSERT INTO funcionarios(nome, idade, salario, setor, cargo)VALUES('Danielle', '26', '4200','Administração', 'Governança');
INSERT INTO funcionarios(nome, idade, salario, setor, cargo)VALUES('Nayara', '31', '3000', 'RH', 'Recrutador');
INSERT INTO funcionarios(nome, idade, salario, setor, cargo)VALUES('Mauro', '19', '3200', 'TI', 'Analista Junior');
INSERT INTO funcionarios(nome, idade, salario, setor, cargo)VALUES('Carla', '23', '2600' ,'Jurídico','Estágio');
INSERT INTO funcionarios(nome, idade, salario, setor, cargo)VALUES('Amanda', '25', '6450', 'TI', 'Desenvolvedor Pleno');
INSERT INTO funcionarios(nome, idade, salario, setor, cargo)VALUES('Robert', '33', '4500', 'Administração', 'Finanças');

SELECT * FROM clientes;

CREATE TABLE clientes
(
	num int unsigned not null auto_increment,
    id_clientes int unsigned null,
    nome varchar(40) not null,
    endereco varchar(100) not null,
    cep varchar(20) not null,
    email varchar(40) not null,
    PRIMARY KEY(num),
    CONSTRAINT fk_clientes FOREIGN KEY(id_clientes)REFERENCES carros(id)
);
	
INSERT INTO clientes(nome, endereco, cep, email)VALUES('Mateus', 'Rua dos jardins', '07663-983', 'mateus@gmail.com');
INSERT INTO clientes(nome, endereco, cep, email)VALUES('Diego', 'Rua das mangas', '07031-102', 'diego@outlook.com');
INSERT INTO clientes(nome, endereco, cep, email)VALUES('Marcos', 'Rua dos pessegos', '05660-345', 'marcos@hotmail.com');
INSERT INTO clientes(nome, endereco, cep, email)VALUES('Juliana', 'Rua das graças', '09535-565', 'juliana@gmail.com');
INSERT INTO clientes(nome, endereco, cep, email)VALUES('Sandra', 'Rua dos cocos', '84565-358', 'sandra@outlook.com');

SELECT * FROM estoque;

CREATE TABLE estoque
(
	id int unsigned not null auto_increment,
    num_estoque varchar(10) default '0',
    carro varchar(15) not null,
    PRIMARY KEY(id),
    CONSTRAINT fk_estoque FOREIGN KEY(id)REFERENCES carros(id)
    
);



INSERT INTO estoque(num_estoque, carro)VALUES('25', 'Corsa');
INSERT INTO estoque(num_estoque, carro)VALUES('18', 'monza');
INSERT INTO estoque(num_estoque, carro)VALUES('24', 'Uno');
INSERT INTO estoque(num_estoque, carro)VALUES('22', 'Ford KA');
INSERT INTO estoque(num_estoque, carro)VALUES('16', 'Gol');

ALTER TABLE estoque DROP COLUMN carro;


SELECT * FROM carros RIGHT JOIN clientes ON id_clientes;

SELECT AVG(salario)FROM funcionarios WHERE setor = 'TI';

SELECT * FROM funcionarios WHERE id = 3
UNION
SELECT * FROM funcionarios WHERE nome = 'Alysson';

SELECT id FROM carros WHERE veiculo = 'Monza';


UPDATE clientes SET id_clientes = 2 WHERE nome ='Sandra';
UPDATE clientes SET id_clientes = 1 WHERE nome = 'Marcos';
UPDATE clientes SET  id_clientes =3 WHERE nome= 'Diego';
UPDATE clientes SET  id_clientes =4 WHERE nome= 'Juliana';
UPDATE clientes SET  id_clientes =5 WHERE nome= 'Mateus';
