CREATE DATABASE db_cidade_dos_vegetais;

USE db_cidade_dos_vegetais;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT,
    tipo VARCHAR(255),
    descricao VARCHAR(255),
    PRIMARY KEY(id)
);

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    valor DECIMAL(6,2),
    quantidade BIGINT,
    estado VARCHAR(255),
    categorias_id BIGINT,
    PRIMARY KEY(id),
    FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(tipo,descricao)
VALUES ("Fruta","Frutos doces e comestíveis."),
("Verdura","Plantas comestíveis, em geral."),
("Legume","Frutos salgados e comestíveis.");

INSERT INTO tb_produtos (nome,valor,quantidade,estado,categorias_id)
VALUES ("Acerola", 12.00,5,"Saudável",1),
("Maçã",7.00,8,"Saudável",1),
("Brócolis",6.00,10,"Saudável",2),
("Gengibre",18.00,5,"Saudável",3),
("Quiabo",15.00,10,"Saudável",3),
("Melão",9.00,4,"Saudável",1),
("Espinafre",5.00,12,"Saudável",2),
("Laranja",13.00,14,"Saudável",1);


SELECT * FROM tb_categorias;
SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE valor > 10;

SELECT * FROM tb_produtos WHERE valor > 5 && valor < 10;

SELECT * FROM tb_produtos WHERE nome like "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_id = tb_categorias.id WHERE tipo = "Fruta";



