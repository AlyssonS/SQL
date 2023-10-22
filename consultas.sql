USE vendas_carros;

SELECT * FROM funcionarios;
SELECT * FROM estoque;

SELECT nome,salario FROM funcionarios ORDER BY salario ASC; 

CREATE VIEW funcionarios_salario AS SELECT * FROM funcionarios WHERE salario >=3000;

SELECT nome FROM funcionarios WHERE salario = '7500';

SELECT nome, salario FROM funcionarios WHERE salario IN (3000, 3600);

SELECT AVG(salario) AS media FROM funcionarios WHERE setor = 'TI';

SELECT setor AS cargo, SUM(salario) AS media FROM funcionarios GROUP BY setor;
SELECT setor AS cargo, COUNT(*) AS media FROM funcionarios GROUP BY setor;



SELECT nome AS funcionarios, setor AS cargo FROM funcionarios;/*Alias criando apelidos*/

SELECT * FROM funcionarios_salario;