USE curso_sql;

SHOW ENGINES;

CREATE TABLE contas_bancarias
(
	id int unsigned not null auto_increment,
    titular varchar(45) not null,
    saldo double not null,
    PRIMARY KEY(id)
)ENGINE = InnoDB;/*ssa tabela vai ser criada utiliando o innodb que da suporte a transações*/

INSERT INTO contas_bancarias(titular, saldo)VALUES('André', 1000 );
INSERT INTO contas_bancarias(titular, saldo)VALUES('Carlos', 2000 );

SELECT * FROM contas_bancarias;

Start transaction;/*Começando a transação*/
UPDATE contas_bancarias SET saldo = saldo - 100 WHERE id =1;/*dando um update da tabela 'contas_bancarias' o campo 'saldo' diminuira -100 do usuario com 'id=1'*/
UPDATE contas_bancarias SET saldo = saldo + 100 WHERE id =2;/*Update do usuario de id=2 recebendo +100*/
rollback;/*Parando a transação e tudo volta aos valores do começo*/

Start transaction;/*Começando a transação*/
UPDATE contas_bancarias SET saldo = saldo - 100 WHERE id =1;/*dando um update da tabela 'contas_bancarias' o campo 'saldo' diminuira -100 do usuario com 'id=1'*/
UPDATE contas_bancarias SET saldo = saldo + 100 WHERE id =2;/*Update do usuario de id=2 recebendo +100*/
commit;/*Confirmando as afirmaçoes*/
