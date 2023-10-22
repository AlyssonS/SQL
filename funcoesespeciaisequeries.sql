USE curso_sql;

SELECT *FROM funcionarios;
SELECT * FROM salarios;

SELECT COUNT(*) FROM funcionarios;/*Contar quantos registros tem na tabela 'funcionarios'*/
SELECT COUNT(*)FROM funcionarios WHERE salario > 1600 AND departamento = 'Jurídico';/*Puxar os registros da contagem da tabela 'funcionarios quem tem 'salario' acima de 1600'*/
SELECT * FROM funcionarios WHERE salario >1600 AND departamento = 'Jurídico';/*A mesma coisa que o de cima sem o count*/
SELECT departamento, COUNT(*)FROM funcionarios GROUP BY departamento; /*Quantos registros tem na coluna 'departamentos' em todos os seus valores */

SELECT SUM(salario) FROM funcionarios;/*da tabela 'funcionarios' eu utilizo o 'sum'  para somar o campo 'salario' e todos os seus valores*/
SELECT SUM(salario) FROM funcionarios WHERE departamento = 'TI';/*Caso eu queira um campo especifico e saber todos os valores da tabela 'funcionarios' e campo 'departamento' com os valores'TI' a serem somados */

SELECT AVG(salario) FROM funcionarios;/*Calculando com o comando 'avg' a média dos campos 'salarios' da tabela 'funcionarios'*/
SELECT AVG(salario)FROM funcionarios WHERE departamento = 'TI';/*Caso eu queira um campo espefico*/
SELECT departamento, AVG(salario)FROM funcionarios GROUP BY departamento;/*Média de todos os campos do campo 'departamento' da tabela 'funcionarios' */
SELECT departamento, AVG(salario)FROM funcionarios GROUP BY departamento HAVING AVG(salario) >2000;/*Igual ao campo acima so que utilizando o having para puxar a coluna 'departamento' e a média(avg) do campo 'salario' maior que 2000*/

SELECT MAX(salario) FROM funcionarios;/*Pegar o maior numero no campo 'salario'*/
SELECT MAX(salario) FROM funcionarios WHERE departamento = 'TI';/*Caso queira um campo especifico*/

SELECT MIN(salario)FROM funcionarios;/*Pegando o maior valor do campo 'salario'*/
SELECT MIN(salario)FROM funcionarios;/*Caso queira um campo especifico*/

SELECT DISTINCT(departamento)FROM funcionarios;/*Comando 'distinct' faz com que os valores do campo 'departamento' mostrem apenas valores unicos sem repetição*/

SELECT * FROM funcionarios ORDER BY nome;/*Ordenando por nome(crescente) o campo 'nome'*/
SELECT * FROM funcionarios ORDER BY nome DESC;/*Parecido com o de cima mas em ordem decrescente*/
SELECT * FROM funcionarios ORDER BY salario;/*Caso queira ordenar em 'salario'*/
SELECT * FROM funcionarios ORDER BY departamento;/*Caso queira por campo 'departamento'*/
SELECT * FROM funcionarios ORDER BY departamento, salario;/*caso queira 2 valores*/
SELECT * FROM funcionarios ORDER BY departamento DESC, salario DESC;/*caso queira 2 valores em decrescente*/

SELECT * FROM funcionarios LIMIT 2;/*limite de 2 valores da tabela 'funcionarios'*/
SELECT * FROM funcionarios LIMIT 2 OFFSET 1;/*Pulando o primeiro valor com 'offset'*/
SELECT * FROM funcionarios LIMIT 1, 2;/*Esse tambem é igual ao de cima so que aqui o '1,' indica que esta pulando 1 casa e apresentando 2 valores como acima já dito*/

SELECT nome FROM funcionarios WHERE departamento IN (SELECT departamento FROM funcionarios GROUP BY departamento HAVING AVG(salario)>2000);/*Selecionando o campo 'nome' e tabela 'funcionarios' onde no departamento irá procurar aonde 'salario' for maior que 2000 ou seja os campos que contenha esse valor que ganhe acima disso (cujo departamento tem media salarial acima de 2000)*/
SELECT nome FROM funcionarios
WHERE departamento IN 
(SELECT departamento FROM funcionarios GROUP BY departamento HAVING AVG(salario)>2000);/*mesma coisa que o de cima(apenas para mostrar melhor a estrutura) e mudando apenas para chamar os nomes*/
