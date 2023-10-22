/* CREATE USER 'alysson'@'192.168.0.2' IDENTIFIED BY '12345';/*Criando um usuario e colocando uma senha e que tipo de conexão de ip ele tem que ter para acessar o banco de dados previnindo mesmo algum hacker tenha o usuario e a senha ele não vai ter o ip*/
/*CREATE USER 'alysson'@'%' IDENTIFIED BY '12345'; /*Estou informado que o acesso ao banco pode ser de qualquer lugar*/

CREATE USER 'alysson'@'localhost' IDENTIFIED BY '12345';/*Mesma coisa que o de cima porém utilizado o localhost ou seja apenas com  acesso a minha maquina pelo servidor será possivel acessar o banco de dados(no ex utilizara esse aqui)*/
GRANT ALL ON curso_sql.* TO 'alysson'@'localhost';/*Estou dando total acesso ao banco 'curso_sql' ao usuario 'alysson'*/

CREATE USER 'alysson'@'%' IDENTIFIED BY '1234567';/*Dando acesso aos dados do banco em qualquer lugar '%'*/
GRANT SELECT ON curso_sql.* TO 'alysson'@'%';/* Dando acesso a selecionar dados caso o usuario não queira acesso total e apenas ler os dados sem afetar a senha do começo já criada*/

GRANT INSERT ON curso_sql.funcionarios TO 'alysson'@'%';/*Garantindo acesso para inserir dados ao usuario 'alysson' em qualquer ip '%' apenas do campo funcionario do banco 'curso_sql'*/

REVOKE INSERT ON curso_sql.funcionarios FROM 'alysson'@'%';/*Retirando acesso ao usuario de inserir dados 'alysson' de acessar a tabela 'funcionarios' do banco 'curso_sql'*/
REVOKE SELECT ON curso_sql.* FROM 'alysson'@'%';/*Não se pode no mysql retirar o acesso de selecionar os dados caso tenha dado acesso total ao usuario nesse campo sem ter que retirar de todas de uma vez*/

GRANT INSERT ON curso_sql.funcionarios TO 'alysson'@'%';
GRANT INSERT ON curso_sql.veiculos TO 'alysson'@'%';

REVOKE INSERT ON curso_sql.funcionarios FROM 'alysson'@'%';/* se colocar o acesso garantido '*' terá que retirar todas de uma vez porem quando se seleciona apenas um campo pode  se remover*/
REVOKE INSERT ON curso_sql.veiculos FROM 'alysson'@'%';/*Mesma coisa que o de cima*/

REVOKE ALL ON curso_sql.* FROM 'alysson'@'localhost';/*remover todo acesso ao usuario indicado*/

DROP USER'alysson'@'%';/*retirar o usuario indicado*/
DROP USER 'alysson'@'localhost';/*A mesma coisa que o de cima*/

SELECT USER FROM mysql.USER;/*Ver todos os usuarios cadastrados no banco de dados mysql*/

SHOW GRANTS FOR 'alysson'@'%';/*Mostrar os acessos que tem o usuario indicado*/