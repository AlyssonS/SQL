USE curso_sql;

INSERT INTO funcionarios (id, nome, salario, departamento)VALUES (1, 'Fernando', 1400, 'TI');/*adicionar valores da tabela 'funcionarios' valores em cada atributo colocado na tabela */  
INSERT INTO funcionarios (id, nome, salario, departamento)VALUES(2, 'Guilherme', 2500, 'Jurídico');/*Adicionando mais valores a tabela 'funcionarios', agora a mesma tem 2 valores adicionados*/
INSERT INTO funcionarios(nome, salario, departamento)VALUES ('Fábio', 1400, 'TI');/*Como o valor 'id' foi colocado como auto_incremento o mesmo não precisa ser declarado nos valores */
INSERT INTO funcionarios(nome, salario, departamento)VALUES('José', 1800, 'Marketing');
INSERT INTO funcionarios(nome, salario, departamento)VALUES('Isabela', 2200, 'Jurídico');

SELECT * FROM funcionarios;/*Puxar os valores da tabela'funcionarios'*/
SELECT * FROM funcionarios WHERE salario>2000;/*Puxar os valores da tabela 'funcionarios' onde o 'salario' é maior que 2000*/
SELECT * FROM funcionarios WHERE nome = 'josé';/*Puxar os valores da tabela funcionarios o 'nome' 'josé' e seus valores*/
SELECT * FROM funcionarios WHERE id=3;/*Mesma coisa só que puxando pelo id*/

SET SQL_SAFE_UPDATES =0;/*necessita desse recurso caso vá dar um update a toda a tabela já que o mysql não deixa utilizando esse comando o mesmo libera*/
/*SET SQL_SAFE_UPDATES = 1;Caso queira bloquear denovo*/
UPDATE funcionarios SET salario= salario * 1.1;/*dar um update na tabela funcionarios onde o método salario é atualizado 10% para todos */
UPDATE funcionarios SET salario= salario * 1.1 WHERE id=1;/*Caso o update seje de apenas 1 elemento não é necessario atualizar se for usar esse recurso*/
UPDATE funcionarios SET salario = ROUND(salario * 1.1, 2);/*Caso queira usar o comando round para arredondar as casas decimais sem os '0' ou adicionar os valores '0' que queira*/

DELETE FROM funcionarios WHERE id = 4;/*Deletar na tabela 'funcionarios' o valor que esta no 'id=4'*/
SELECT * FROM veiculos;

INSERT INTO veiculos (funcionario_id, veiculo, placa) VALUES (1, 'Carro', 'SB-0001');/*Inserindo valores na tabela 'veiculos'*/
INSERT INTO veiculos (funcionario_id, veiculo, placa) VALUES(1, 'Carro', 'SB-0002');

UPDATE veiculos SET funcionario_id = 5 WHERE id = 2;/*Update na qual a tabela funcionarios pegando o id '5' de nome 'isabela' receba o 'carro' 'SB-0002'*/

INSERT INTO salarios (faixa, inicio, fim) VALUES('Analista JR', '1000', '2000');/*Adicionando valores a tabela 'salarios'*/
INSERT INTO salarios (faixa, inicio, fim) VALUES ('Analista Pleno', '2000', '4000');/*Mesma coisa que a de cima*/

SELECT * FROM salarios;/*Puxando a tabela 'salarios'*/
SELECT * FROM funcionarios f WHERE f.salario > 2000;/*Além de puxar a tabela 'funcionarios' e mostrar os valores a mesma ganhou um apelido'f' quando for requisitada pode usa-lo, e pegando valores acima de 2000*/
SELECT nome,salario FROM funcionarios f WHERE f.salario > 2000;/*Dessa Vez puxando os valores da tabela funcionarios apenas 'nome e salario' acima de 2000*/
SELECT nome AS 'funcionario', salario FROM funcionarios f WHERE f.salario > 2000;/*Atribuinso o 'AS' que cria apelido para o campo 'nome' o substituindo*/
SELECT * FROM funcionarios WHERE nome = 'guilherme';/*Puxando em 'funcionarios'  o campo 'nome' com valor 'guilherme'*/
SELECT * FROM funcionarios WHERE id = 5;/*A mesma coisa do de cima so que puxando o campo 'id'*/

SELECT * FROM funcionarios WHERE nome = 'guilherme'
UNION
SELECT * FROM funcionarios WHERE id = 5;/*Utilizando o atributo 'UNION' para unir os 2 valores a serem puxados*/

SELECT * FROM funcionarios WHERE nome = 'guilherme'
UNION ALL
SELECT * FROM funcionarios WHERE nome = 'guilherme'/*Unindo 2 valores iguais e mostrando os 2 na tabela*/