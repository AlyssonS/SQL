CREATE DATABASE curso_sql;/* Criação de um banco de dados */

USE curso_sql; /*Sempre usar esse comando quando for acessar uma tabela especifica o 'use' e o nome da tabela */

CREATE TABLE funcionarios /*Criando uma tabela funcionarios */
(
	id int unsigned not null auto_increment,/* a variavel 'id' sendo a chave primaria dessa tabela sendo um valor inteiro não podendo ter numeros nulos e ter auto incremento */
    nome varchar(45) not null,/* Criado uma variavel 'nome' que armazena 45 caracteres sem ter valores nulos */
    salario double not null default '0',/* variavel salario com atributo double que recebe casas decimais sem valor nulo e caso não volte um valor que seje '0' */
    departamento varchar(45) not null,/* Variavel departamento sendo atributo varchar com armazenamento ate 45 caracteres não nulo */
    PRIMARY KEY (id)/*Criando a chave primaria instanciando como foi feita sendo o 'id' a mesma */
);

CREATE TABLE veiculos
(
	id int unsigned not null auto_increment,
    funcionario_id int unsigned default null,
    veiculo varchar(45) not null default '',
    placa varchar(10) not null default '',
    PRIMARY KEY (id), 
    CONSTRAINT fk_veiculos_funcionarios FOREIGN KEY(funcionario_id) REFERENCES funcionarios(id)/* criando uma chave composta aqui utilizando um apelido na tabela que se autodenomina 'constraint' 'fk_veiculos_funcionarios' e a chave primaria da segunda tabela 'id_funcionarios' e referenciando a primeira tabela 'REFERENCES' 'funcionarios(id)'*/
);

CREATE TABLE salarios
(
	faixa varchar(45) not null,
    inicio double not null,
    fim double not null,
    PRIMARY key(faixa)
);

ALTER TABLE funcionarios CHANGE COLUMN nome nome_func varchar(45) not null;
ALTER TABLE funcionarios CHANGE COLUMN nome_func nome varchar(45) not null;

DROP TABLE salarios;/*Apagando a tabela 'salarios' esse método é permanente */

/* Criando um index de departamento da tabela funcionarios que contem esse valor atribuido 'departamentos'*/
CREATE INDEX departamentos ON funcionarios(departamento);/* Indexs são utilizados para puxar áreas da tabelas que mais se utiliza, use-os apenas em tabelas que mais se utiliza pois gasta-se muito processamento a este tipo de método */
CREATE INDEX nomes ON funcionarios(nome(6));/*Mesma coisa do index acima só que criando um com nome 'nomes' da tabela funcionarios referenciando o atributo 'nome' e usando apenas 6 caracteres dos 45 do varchar*/

