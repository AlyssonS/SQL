CREATE DATABASE empresa_sql;

USE empresa_sql;

SELECT * FROM funcionarios;

ALTER TABLE funcionarios ADD COLUMN data_nasc DATE;
ALTER TABLE funcionarios ADD COLUMN periodo ENUM('Manhã', 'Tarde', 'noturno');
ALTER TABLE funcionarios DROP COLUMN data_nasc;


INSERT INTO funcionarios (nome_funcionario, idade_funcionario, cpf_funcionario, salario_funcionario, data_nasc, periodo)VALUES
('Alysson', '25', '11.111.111.111', '3500.00', '1998/04/03', 'Noturno'),
('Vanessa', '33', '22.222.222.222', '3200.00', '1992/03/17', 'Tarde'),
('Carlos', '26', '12.449.394.848', '5000.00', '1988/05/09', 'Tarde'),
('Sergio', '23', '14.345.234.355', '6500.00', '1972/11/10', 'Manhã'),
('Danielle', '39', '15.345.355.355', '7000.00', '1966/10/04', 'Manhã'),
('Jefferson', '26', '11.244.565.949', '3350.00', '1999/05/07', 'Noturno');

INSERT INTO funcionarios (nome_funcionario, idade_funcionario, cpf_funcionario, salario_funcionario, periodo)VALUES
('Diego', '34', '57.489.589.594', '4320.00', 'Noturno'),
('Carla', '22', '89.404.959.867', '5500.00', 'Manhã'),
('Maria', '34', '76.858.585.854', '4010.00', 'Tarde'),
('Miguel', '29', '23.758.849.738', '5700.00', 'Noturno'),
('Jéssica', '28', '64.748.393.568', '3700.00', 'Noturno'),
('Nayara', '20', '44.839.004.945', '4000.00', 'Tarde'),
('Kauê', '22', '83.957.309.830', '4230.00', 'Manhã'),
('Danilo', '33', '34.937.493.449', '6100.00', 'Tarde'),
('Bernardo', '19', '93.750.938.504', '5420.00', 'Noturno'),
('Taína', '26', '92.393.749.379', '3200.00', 'Manhã'),
('Leandro', '30', '83.649.374.953', '4010.00', 'Noturno'),
('Leonardo', '44', '73.937.403.084', '9250.00', 'Manhã'),
('Roberta', '39', '73.073.093.830', '10050.00', 'Tarde'),
('Reynaldo', '41', '08.304.938.748', '11150.00', 'Noturno'),
('Ricardo', '56', '34.297.392.279', '25000.00', 'Manhã');

INSERT INTO funcionarios (nome_funcionario, idade_funcionario, cpf_funcionario, salario_funcionario, periodo)VALUES
('Amanda', '22', '22.345.453.123', '4300.00', 'Noturno');

UPDATE funcionarios SET id = 7 WHERE id = 22;
UPDATE funcionarios SET id = 8 WHERE id = 23;
UPDATE funcionarios SET id = 9 WHERE id = 24;
UPDATE funcionarios SET id = 10 WHERE id = 25;
UPDATE funcionarios SET id = 11 WHERE id = 26;
UPDATE funcionarios SET id = 12 WHERE id = 27;
UPDATE funcionarios SET id = 13 WHERE id = 28;
UPDATE funcionarios SET id = 14 WHERE id = 29;
UPDATE funcionarios SET id = 15 WHERE id = 30;
UPDATE funcionarios SET id = 16 WHERE id = 31;
UPDATE funcionarios SET id = 17 WHERE id = 32;
UPDATE funcionarios SET id = 18 WHERE id = 33;
UPDATE funcionarios SET id = 19 WHERE id = 34;
UPDATE funcionarios SET id = 20 WHERE id = 35;
UPDATE funcionarios SET id = 21 WHERE id = 36;

SELECT * FROM end_funcionarios;

INSERT INTO end_funcionarios(pais_funcionario, end_funcionario, estado_funcionario, funcionarios_id)VALUES
('Brasil', 'Rua das Orquideas', 'São Paulo', '1'),
('Holanda', 'Rua dos cocos','Zelândia', '2'),
('Canadá', 'Rua Marshmellow','Quebec', '3'),
('EUA','Rua Hollywood', 'Florida', '4'),
('Brasil', 'Rua das goiabas', 'Espirito Santo', '5'),
('Russia', 'Rua Kashimir', 'Volvogrado', '6'),
('Brasil', 'Rua dos Melões', 'Rio de Janeiro', '7'),
('Brasil', 'Rua dos Abacaxis', 'Paraná', '8'),
('EAU', 'Rua dos Sheiks', 'Dubai', '9'),
('Reino Unido', 'Rua Inglesa', 'Wessex', '10'),
('França', 'Rua das Baguetes', 'Normandia', '11'),
('Portugal', 'Rua Dos Sais', 'Lisboa', '12'),
('EUA', 'Rua Americana', 'Texas','13'),
('Italia', 'Rua das Pizzas', 'Sicilia', '14'),
('Brasil', 'Rua das Ameixas', 'Amazonas', '15'),
('Brasil', 'Rua dos Canhões', 'Ceara', '16'),
('Australia', 'Rua dos Masurpiais', 'Sidney', '17'),
('Turquia', 'Rua dos Bizantinos', 'Istambul', '18'),
('Brasil', 'Rua das Maças', 'Brásilia', '19'),
('China', 'Rua dos Yakissobas', 'Xinjiang', '20'),
('Ucrania', 'Rua dos Cossacos', 'Lviv', '21');

UPDATE end_funcionarios SET id = 1 WHERE id = 22;
UPDATE end_funcionarios SET id = 2 WHERE id = 23;
UPDATE end_funcionarios SET id = 3 WHERE id = 24;
UPDATE end_funcionarios SET id = 4 WHERE id = 25;
UPDATE end_funcionarios SET id = 5 WHERE id = 26;
UPDATE end_funcionarios SET id = 6 WHERE id = 27;
UPDATE end_funcionarios SET id = 7 WHERE id = 28;
UPDATE end_funcionarios SET id = 8 WHERE id = 29;
UPDATE end_funcionarios SET id = 9 WHERE id = 30;
UPDATE end_funcionarios SET id = 10 WHERE id = 31;
UPDATE end_funcionarios SET id = 11 WHERE id = 32;
UPDATE end_funcionarios SET id = 12 WHERE id = 33;
UPDATE end_funcionarios SET id = 13 WHERE id = 34;
UPDATE end_funcionarios SET id = 14 WHERE id = 35;
UPDATE end_funcionarios SET id = 15 WHERE id = 36;
UPDATE end_funcionarios SET id = 16 WHERE id = 37;
UPDATE end_funcionarios SET id = 17 WHERE id = 38;
UPDATE end_funcionarios SET id = 18 WHERE id = 39;
UPDATE end_funcionarios SET id = 19 WHERE id = 40;
UPDATE end_funcionarios SET id = 20 WHERE id = 41;
UPDATE end_funcionarios SET id = 21 WHERE id = 42;


SELECT * FROM funcionarios;
SELECT * FROM departamento;

ALTER TABLE departamento MODIFY COLUMN cargo_departamento VARCHAR(30) NOT NULL;


INSERT INTO departamento(cargo_departamento, setor_departamento, funcionarios_departamento_id)VALUES
('Administrador Linux', 'TI', '1'),
('Psicologa', 'RH', '2'),
('Programador Front-END', 'TI', '3'),
('Direito Empresarial', 'Direito', '4'),
('Programador Back-END', 'TI', '5'),
('Recursos Humanos', 'RH', '6'),
('Desenvolvedor Python', 'TI', '7'),
('Desenvolvedor C++', 'TI', '8'),
('Gestor de TI', 'Gestão', '9'),
('Gerente de Operações', 'Gerência', '10'),
('Gerente de Vendas', 'Gerência', '11'),
('Especialista Em Qualidade', 'Operações', '12'),
('Especialista em Marketing', 'Marketing', '13'),
('Contador', 'Finanças', '14'),
('Analista Financeiro', 'Financeiro', '15'),
('Especialista em Recrutamento', 'RH', '16'),
('Gerente de Desenvolvimento', 'Gerência', '17'),
('Especialista em Marketing', 'Marketing', '18'),
('Analista De Monitoramento', 'TI', '19'),
('Contador', 'Financeiro', '20'),
('Diretor Geral', 'CEO', '21');



SELECT* FROM produtos;

INSERT INTO produtos(nome_produto, valor_produto)VALUES
('Mentoria Empresarial', '15000.00'),
('Consultoria', '9000.00'),
('Analise de Riscos', '7000.00'),
('Segurança Da Informação', '10000.00'),
('Gestão de Negocios', '6250.00'),
('Infraestrutura De Redes','20000.00'),
('Desenvolvimento Software', '12000.00'),
('Serviços em Nuvem', '10000.00'),
('Suporte Técnico', '3000.00');


UPDATE produtos SET id = 1 WHERE id = 10;
UPDATE produtos SET id = 2 WHERE id = 11;
UPDATE produtos SET id = 3 WHERE id = 12;
UPDATE produtos SET id = 4 WHERE id = 13;
UPDATE produtos SET id = 5 WHERE id = 14;
UPDATE produtos SET id = 6 WHERE id = 15;
UPDATE produtos SET id = 7 WHERE id = 16;
UPDATE produtos SET id = 8 WHERE id = 17;
UPDATE produtos SET id = 9 WHERE id = 18;

SELECT * FROM vendas_funcionarios;

INSERT INTO vendas_funcionarios(produtos_id, venda_funcionarios_id)VALUES
('1', '3'),
('2', '5'),
('3', '11'),
('4', '1'),
('5', '14'),
('6', '11'),
('7', '9'),
('8', '1'),
('9', '1'),
('3', '2'),
('4', '7'),
('2', '3'),
('8', '12'),
('9', '10'),
('4','16'),
('8', '20'),
('1', '21'),
('9', '21'),
('4', '11'),
('1', '1'),
('9', 13),
('3', '9'),
('7', '16'),
('8', '3');

SELECT * FROM empresa_sql.fatura_vendas;

SELECT nome_funcionario, nome_produto, Valor_produto FROM funcionarios
INNER JOIN produtos ON funcionarios.id = produtos.id;

SELECT * FROM departamento WHERE setor_departamento = 'TI';

DELIMITER $$
CREATE PROCEDURE ti()
BEGIN
SELECT setor_departamento, nome_funcionario FROM departamento 
INNER JOIN funcionarios ON funcionarios.id  = departamento.funcionarios_departamento_id
WHERE setor_departamento = 'TI';
END$$
DELIMITER ;

DELIMITER $$
 CREATE PROCEDURE contagem()
BEGIN
SELECT setor_departamento AS setor, COUNT(*) AS cargo FROM departamento GROUP BY setor_departamento;
END$$
DELIMITER ;

CALL contagem;
CALL ti;


SELECT nome_funcionario AS funcionario ,venda_funcionarios_id AS Venda_id FROM vendas_funcionarios v
INNER JOIN funcionarios f ON f.id = v.produtos_id
WHERE venda_funcionarios_id = 3;

SELECT * FROM produtos;

SELECT f.id AS id_funcionario, nome_funcionario AS funcionario ,venda_funcionarios_id  AS Venda_id, valor_produto AS Valor 
FROM vendas_funcionarios v
INNER JOIN funcionarios f ON f.id = v.produtos_id
INNER JOIN produtos p ON p.id = v.produtos_id
WHERE venda_funcionarios_id = 3;

SELECT nome_funcionario, valor_produto FROM funcionarios f
INNER JOIN vendas_funcionarios v ON f.id = v.produtos_id
INNER JOIN produtos p ON p.id = v.produtos_id
WHERE nome_funcionario = 'Alysson';

SELECT nome_funcionario, salario_funcionario FROM funcionarios WHERE salario_funcionario >= 5000;


SELECT nome_funcionario AS Funcionario, ROUND (AVG(salario_funcionario),2)AS Média FROM funcionarios f
INNER JOIN departamento d ON f.id = d.funcionarios_departamento_id
WHERE setor_departamento = 'TI'
GROUP BY f.nome_funcionario;

SELECT ROUND (AVG(salario_funcionario),2)AS Média FROM funcionarios f
INNER JOIN departamento d ON f.id = d.funcionarios_departamento_id
WHERE setor_departamento = 'TI';

DELIMITER $$
CREATE PROCEDURE media()
BEGIN

SELECT d.setor_departamento AS departamento, ROUND(AVG(f.salario_funcionario), 2) AS media_salario
FROM funcionarios f
INNER JOIN departamento d ON f.id = d.funcionarios_departamento_id
WHERE setor_departamento IN ('TI', 'Marketing', 'RH', 'Gerência')
GROUP BY setor_departamento;
END $$

DELIMITER ;
 
 CREATE TABLE produto
 (
	id INT UNSIGNED NOT NUll AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(30) NULL,
    valor_produto DECIMAL(10, 2) NULL,
    desconto_produto DECIMAL(10, 2)NULL
 );
 
 CREATE TRIGGER tr_desconto BEFORE INSERT
 ON produto
 FOR EACH ROW
 SET NEW.desconto_produto = (NEW.valor_produto * 0.90);
 
 INSERT INTO produto(nome_produto, valor_produto)
 VALUES ('Monitor', '350.00');
 
 SELECT* FROM produto;


CREATE USER 'carlos'@'localhost' IDENTIFIED BY '12345';

GRANT SELECT, INSERT, UPDATE, DELETE, EXECUTE ON empresa_sql.* TO 'carlos'@'localhost'; 
GRANT ALL PRIVILEGES ON empresa.sql TO 'carlos'@'localhost';

SELECT CURRENT_USER();

SHOW GRANTS FOR 'carlos'@'localhost';

DELIMITER $$
CREATE TRIGGER tr_carlos AFTER INSERT ON produtos
FOR EACH ROW
BEGIN
	INSERT INTO produtos(nome_produto, valor_produto)VALUES();
END $$

DELIMITER ; 



