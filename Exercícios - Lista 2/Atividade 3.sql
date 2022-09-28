CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
	id BIGINT AUTO_INCREMENT,
    tipo VARCHAR(255),
    descricao VARCHAR(255),
    PRIMARY KEY(id)
);

CREATE TABLE tb_produtos (
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    valor DECIMAL(6,2),
    marca VARCHAR(255),
    cor VARCHAR(255),
    modelo VARCHAR(255),
    categorias_id BIGINT,
    PRIMARY KEY(id),
    FOREIGN KEY (categorias_id) references tb_categorias(id)
);

INSERT INTO tb_categorias (tipo, descricao)
VALUES ("Medicamento","Curam doenças ou alivia sintomas"),
("Higiene Pessoal","Medidas, ações e práticas com o intuito de evitar doenças e preservar a saúde."),
("Cosméticos", "Pele, sistema capilar, unhas, lábios"),
("Preservativos","Usado para proteção sexual");

SELECT * FROM tb_categorias;

UPDATE tb_categorias SET descricao = "Evitar doenças e preservar a saúde" WHERE id = 2;

INSERT INTO tb_produtos (nome, valor, marca, cor, modelo, categorias_id)
VALUES("Creme Facial Pele De Porcelana", 33.90, "Kokeshi","Rosa e Verde","Hidratante facial",3),
("Nimesulida Dispersível 100mg", 15.59, "Cifarma","Branco","Genérico",1),
("Preservativo Prudence 12 Unidades", 8.74, "Prudence","Vermelho","With Lubrication",4),
("Escova Dental Natural Bamboo", 21.90, "Orgânico Natural","Madeira","Soft Bristle ",2),
("Escova Para Banho", 33.99, "Condor","Branco","Exfoliating",2),
("Escova Dental Oral-B Expert Pick Interdental", 15.99, "Oral-B","Azul","Interdental",2),
("Antisséptico Bucal Flúor", 15.49, "Cepacol","Verde","Interdental",2),
("Sérum Facial Wepink 10 Em 1 ", 161.19, "Wepink","Rosa","Hidratante Facial",3);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE valor > 50;

SELECT * FROM tb_produtos WHERE valor > 5 && valor < 60;

SELECT * FROM tb_produtos WHERE nome like "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_id = tb_categorias.id where tipo like "Cosméticos";
