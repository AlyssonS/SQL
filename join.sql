USE curso_sql;

SELECT * FROM funcionarios;
SELECT * FROM funcionarios;
SELECT * FROM funcionarios INNER JOIN veiculos ON funcionario_id = funcionarios.id;/*Utilização do inner join com a conexão de chave estrangeira de funcionarios ligando veiculos*/
SELECT * FROM funcionarios f INNER JOIN veiculos v ON v.funcionario_id = f.id;/*Mesma coisa que o exemplo de cima porém usando apelidos*/

SELECT * FROM funcionarios f LEFT JOIN veiculos v ON v.funcionario_id = f.id;/*Pegando o lado esquerdo da tabela mesmo que não apresente todos os valores se cruzem*/
SELECT * FROM funcionarios f RIGHT JOIN veiculos v ON v.funcionario_id = f.id;/*Mesma coisa que o de cima porém o lado direito*/

SELECT * FROM funcionarios f LEFT JOIN veiculos v ON v.funcionario_id = f.id
UNION
SELECT * FROM funcionarios f RIGHT JOIN veiculos v ON v.funcionario_id = f.id;/*Unindo os 2 valores no mysql que não tem o comando 'full join'*/

INSERT INTO veiculos(funcionario_id, veiculo, placa)VALUES(null, 'Moto', 'SB-0003');

CREATE TABLE cpfs
(
	id int unsigned not null,
    cpf varchar(14) not null,
    PRIMARY KEY(id),
    CONSTRAINT fk_cpf FOREIGN KEY (id) REFERENCES funcionarios(id)
);

INSERT INTO cpfs(id, cpf)VALUES(1, '111.111.111-11');
INSERT INTO cpfs(id, cpf)VALUES(2, '222.222.222-22');
INSERT INTO cpfs(id, cpf)VALUES(3, '333.333.333-33');
INSERT INTO cpfs(id, cpf)VALUES(5, '555.555.555-55');

SELECT * FROM cpfs;

SELECT * FROM funcionarios f INNER JOIN cpfs ON f.id = cpfs.id;/*Pegando os valores da tabela 'funcionarios' e 'cpfs' */
SELECT * FROM funcionarios INNER JOIN cpfs USING(id);/*Pegando os valores da tabela funcionarios e cpfs e pegando os valores que eles tem em comum. Sendo o o 'id' nessa */

CREATE TABLE clientes/*Criando tabela para quem indicou quem e fazendo referencia a si mesma*/
(
	id int unsigned not null auto_increment,
    nome varchar(45) not null,
    quem_indicou int unsigned,
    PRIMARY KEY(id),
    CONSTRAINT fk_quem_indicou FOREIGN KEY(quem_indicou) REFERENCES clientes(id)
);

INSERT INTO clientes(id, nome, quem_indicou)VALUES(1, 'André', NULL);
INSERT INTO clientes(id, nome, quem_indicou)VALUES(2, 'Samuel', 1);
INSERT INTO clientes(id, nome, quem_indicou)VALUES(3, 'Carlos', 2);
INSERT INTO clientes(id, nome, quem_indicou)VALUES(4, 'Rafael', 1);

SELECT * FROM clientes;

SELECT  a.nome AS CLIENTE, b.nome AS QUEM_INDICOU FROM clientes a JOIN clientes b ON a.quem_indicou = b.id;/*Criou-se apelidos 'a e b' para buscar relacionametos na mesma tabela fazendo referência*/

SELECT * FROM funcionarios f INNER JOIN veiculos v ON v.funcionario_id = f.id INNER JOIN cpfs ON cpfs.id = f.id;/*Fazendo referencia a tabela 'funcionarios e veiculos' juntando com a tabela 'cpfs'*/

CREATE VIEW funcionarios_a AS SELECT * FROM funcionarios WHERE salario >= 1700;/*Criando uma visão(uma consulta que se é muito utilizada)*/
SELECT * FROM funcionarios_a;/*Puxando a view que criamos*/

UPDATE funcionarios SET salario = 1500 WHERE id =3;/*Dando um update na tabela 'funcionarios' e campo 'salario' do elemento que tem 'id =3'*/

DROP VIEW funcionarios_a;/*Excluir uma view*/

CREATE VIEW funcionarios_a AS SELECT * FROM funcionarios WHERE salario >= 2000;/*Criando outra view por conta do drop da outra 'funcionarios_a'*/
