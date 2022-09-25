CREATE DATABASE db_registro_escola;

USE db_registro_escola;

CREATE TABLE tb_estudantes(
	RA BIGINT AUTO_INCREMENT,
    nome VARCHAR(1000),
    idade INT,
    genero CHAR(255),
    nota INT,
    disciplina CHAR(255),
    primary key(RA)
    );
    
INSERT INTO tb_estudantes(nome, idade, genero, nota, disciplina)
VALUE ("João Figueira Marques", 15, "Masculino", 8, "Matemática");
INSERT INTO tb_estudantes(nome, idade, genero, nota, disciplina)
VALUE ("Lidia Maria Joana", 17, "Feminino", 9, "Português");
INSERT INTO tb_estudantes(nome, idade, genero, nota, disciplina)
VALUE ("Mariana Juiz de Fora", 17, "Feminino", 5, "Biologia");
INSERT INTO tb_estudantes(nome, idade, genero, nota, disciplina)
VALUE ("Luis Mariano Junior", 15, "Masculino", 6, "Matemática");
INSERT INTO tb_estudantes(nome, idade, genero, nota, disciplina)
VALUE ("Karoline Liuzian Poblim", 15, "Feminino", 8, "Matemática");
INSERT INTO tb_estudantes(nome, idade, genero, nota, disciplina)
VALUE ("Marcela Ingrid Manesa", 11, "Feminino", 10, "História");
INSERT INTO tb_estudantes(nome, idade, genero, nota, disciplina)
VALUE ("Leonardo Manuizes Lopes", 15, "Masculino", 5, "Filosofia");
INSERT INTO tb_estudantes(nome, idade, genero, nota, disciplina)
VALUE ("Lucas Silva Santos", 12, "Masculino", 10, "Artes");

SELECT * FROM tb_estudantes;

SELECT * FROM tb_estudantes WHERE nota > 7;
SELECT * FROM tb_estudantes WHERE nota < 7;

UPDATE tb_estudantes SET nota = 6 WHERE RA = 6;