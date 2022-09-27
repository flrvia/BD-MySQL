CREATE DATABASE db_servico_rh; -- criando banco de dados

USE db_servico_rh; -- acessando o banco de dados

CREATE TABLE tb_funcionarios(
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(1000),
    idade INT,
    funcao CHAR(255),
	salario BIGINT,
	cpf DOUBLE,
    PRIMARY KEY (id)
); -- criando tabela para os funcionarios

INSERT INTO tb_funcionarios(nome, idade, funcao, salario, cpf)
VALUES ("Isadora Manuel", 25, "Desenvolvedora Java Junior", 4000, 12345678965);
INSERT INTO tb_funcionarios(nome, idade, funcao, salario, cpf)
VALUES ("Nubia Silva", 49, "Scrum Master", 8000, 32145678965);
INSERT INTO tb_funcionarios(nome, idade, funcao, salario, cpf)
VALUES ("Marcos Jovial", 36, "Recepcionista", 1500, 12585678965);
INSERT INTO tb_funcionarios(nome, idade, funcao, salario, cpf)
VALUES ("Luis Fernando", 58, "Mostorista", 2500, 89655684214);
INSERT INTO tb_funcionarios(nome, idade, funcao, salario, cpf)
VALUES ("Leticia Marcondes", 29, "Estagiária", 1000, 15445678965);
SELECT * FROM tb_funcionarios;

SET SQL_SAFE_UPDATES = 0;

DELETE FROM tb_funcionarios WHERE id = 5;

SELECT * FROM tb_funcionarios WHERE salario > 2000;
SELECT * FROM tb_funcionarios WHERE salario < 2000;

UPDATE tb_funcionarios SET nome = "Marcela Nunes" WHERE id=3;

