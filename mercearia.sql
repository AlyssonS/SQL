CREATE DATABASE mercearia_sql;

USE mercearia_sql;

SELECT * FROM produto;

ALTER TABLE produto ADD COLUMN valor_produto DECIMAL (10, 2) NOT NULL;

INSERT INTO produto(id, nome_produto, valor_produto)VALUES
(1, 'Leite 1L', '6.25'),
(2, 'Lasanha', '7.50'),
(3, 'Ruffles', '6.00'),
(4, 'Ovos', '18.00'),
(5, 'Chocolate', '5.50');

INSERT INTO produto(id, nome_produto, valor_produto)VALUES
(6, 'Balas', '0.50');

INSERT INTO produto(id, nome_produto, valor_produto)VALUES
(7,'Amendoim', '4.90'),
(8, 'Pizza pequena','12.90'),
(9, 'Água de coco pequena', '4.20'),
(10, 'Água de coco Grande', '8.90'),
(11, 'Bolacha', '3.50'),
(12, 'Miojo', '2.50'),
(13, 'Melancia', '9.90'),
(14, 'Cerveja 350ML', '4.00'),
(15, 'Cerveja 600ML', '10.50'),
(16, 'Cerveja 1L', '15.50'),
(17, 'Yogurte 1L', '6.25'),
(18, 'Salgadinho Fofura', '3.90'),
(19, 'Dose Cachaça', '4.00'),
(20, 'Dose Vodka', '4.50'),
(21, 'Dose Whisky', '7.00'),
(22, 'Gin', '10.00'),
(23, 'Caipirinha', '8.00'),
(24, 'Porção Fritas Pequena', '6.90'),
(25, 'Porção Fritas Grande', '10.90')
;

SELECT * FROM fornecedores;

ALTER TABLE fornecedores CHANGE COLUMN nome_fonecedor nome_fornecedor VARCHAR(30) NOT NULL;

ALTER TABLE fornecedores ADD FOREIGN KEY (idfornecedores)REFERENCES produto(id);

INSERT INTO fornecedores(idfornecedores, quantidade, nome_fonecedor)VALUES
(1, '25', 'Jose Bebidas'),
(2, '60', 'Alberto Revendedor'),
(3, '80', 'PepsiCO'),
(4, '90', 'Granja francisco'),
(5, '85', 'Doceria Doce'),
(6, '92', 'José Bebidas');


INSERT INTO fornecedores(idfornecedores, nome_fonecedor)VALUES
(7, 'José Bebidas'),
(8, 'Seu Zé Farinhas'),
(9, 'José Bebidas'),
(10, 'José Bebidas'),
(11, 'Doceria Doce'),
(12, 'Atacadão'),
(13, 'Hortifruit Frutado'),
(14, 'José Bebidas'),
(15, 'José Bebidas'),
(16, 'José Bebidas'),
(17, 'José Bebidas '),
(18, 'Atacadão'),
(19, 'José Bebidas'),
(20, 'José Bebidas'),
(21,'José Bebidas'),
(22, 'José Bebidas'),
(23, 'José Bebidas'),
(24, 'Atacadão'),
(25, 'Atacadão');

SELECT valor_produto AS preço, nome_fonecedor AS fornecedor FROM produto 
INNER JOIN fornecedores ON produto.id = fornecedores.idfornecedores;


SELECT * FROM funcionario;

ALTER TABLE funcionario MODIFY COLUMN cpf_func VARCHAR(11);

INSERT INTO funcionario(nome_func, idade_func, cpf_func, produto_id)VALUES
('Alysson', '25', '94956855224', '1'),
('Carlos', '22', '88844444445', '2'),
('Mateus', '26', '11234122445', '3'),
('Juliana', '28', '33333333333', '4'),
('Carla', '20', '22222222222', '5');

SELECT * FROM end_func;

INSERT INTO end_func(end_func, cep_func, num_func, desc_func, funcionario_idfunc)VALUES
('Rua dos peixes', '07836684', '15', 'Funcionario exemplar', '1'),
('Rua das amoras', '74759302', '23', 'Funcionario experiente', '2'),
('Rua das goiabas', '58492300', '54', 'Funcionario esforçado', '3'),
('Rua dos gengibres', '48482049', '145', 'Funcionaria sempre prestátiva', '4'),
('Rua dos camelos', '24568954', '2495', '', '5');

INSERT INTO qtd_produto(quantidade, produto_id)VALUES
('25', '1'),
('45', '2'),
('66', '3'),
('85', '4'),
('95', '5');

CREATE VIEW dados_func AS
SELECT *
FROM funcionario
INNER JOIN end_func ON funcionario.idfunc = end_func.funcionario_idfunc;

ALTER VIEW dados_func AS
SELECT idfunc AS id, nome_func AS nome, idade_func AS idade, cpf_func AS cpf, end_func AS endereço, cep_func AS CEP, num_func Numero
FROM funcionario
INNER JOIN end_func ON funcionario.idfunc = end_func.funcionario_idfunc;

/*Criação de VIEWS*/
SELECT * FROM dados_func;
SELECT * FROM qtd_produto_fornecedor;
SELECT * FROM preco_produto;
SELECT * FROM fornecedor_jose;

CREATE VIEW qtd_produto_fornecedor AS
SELECT * FROM qtd_produto 
INNER JOIN fornecedor_qtd_produto ON qtd_produto.id = fornecedor_qtd_produto.qtd_produto_id
INNER JOIN fornecedores ON fornecedor_qtd_produto.fornecedores_idfornecedores = fornecedores.idfornecedores;

SELECT * FROM produto
LEFT JOIN qtd_produto ON produto.id = qtd_produto.produto_id;

CREATE VIEW preco_produto AS
SELECT produto_id, nome_produto AS produto, valor_produto AS Preço, quantidade FROM produto
INNER JOIN qtd_produto ON produto.id = qtd_produto.produto_id;

CREATE VIEW fornecedor_jose AS
SELECT nome_fornecedor AS Fornecedor, nome_produto AS Produto FROM fornecedores 
INNER JOIN produto ON
produto.id = fornecedores.idfornecedores
WHERE nome_fornecedor = 'José Bebidas';



INSERT INTO fornecedor_qtd_produto(fornecedores_idfornecedores, qtd_produto_id)VALUES
(1, 1),
(2 ,2),
(3, 3),
(4, 4),
(5, 5);

ALTER TABLE fornecedores DROP COLUMN quantidade;



