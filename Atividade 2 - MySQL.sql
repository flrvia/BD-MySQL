CREATE DATABASE db_e_commerce;

USE db_e_commerce;

CREATE TABLE tb_produtos(
	id BIGINT auto_increment,
	nome VARCHAR(1000),
    preco BIGINT,
	quantidade INT,
    cor VARCHAR (255),
    tamanho INT,
    primary key(id)
);

INSERT INTO tb_produtos(nome, preco, quantidade, cor, tamanho)
VALUES ("Camiseta Nike", 25.00, 2, "Branco", 50);
INSERT INTO tb_produtos(nome, preco, quantidade, cor, tamanho)
VALUES ("Jaqueta Adidas June", 100.00, 5, "Preto", 45);
INSERT INTO tb_produtos(nome, preco, quantidade, cor, tamanho)
VALUES ("Tênis Air Force", 300.00, 1, "Preto e Azul", 45);
INSERT INTO tb_produtos(nome, preco, quantidade, cor, tamanho)
VALUES ("Mochila Space", 255.00, 1, "Rosa", 0);
INSERT INTO tb_produtos(nome, preco, quantidade, cor, tamanho)
VALUES ("Camisa Juline Kars", 55.00, 7, "Marinho", 12);
INSERT INTO tb_produtos(nome, preco, quantidade, cor, tamanho)
VALUES ("Camiseta Kols", 45.00, 2, "Branco", 38);
INSERT INTO tb_produtos(nome, preco, quantidade, cor, tamanho)
VALUES ("Calça Manide", 150.00, 3, "Preto", 38);
INSERT INTO tb_produtos(nome, preco, quantidade, cor, tamanho)
VALUES ("Calça Cargo", 85.00, 2, "Verde Musgo", 36);
INSERT INTO tb_produtos(nome, preco, quantidade, cor, tamanho)
VALUES ("Legging Linda", 70.00, 8, "Preto", 34);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco <  500;

UPDATE tb_produtos SET preco = 550.00 WHERE id = 4;

ALTER TABLE tb_produtos MODIFY preco decimal(6,2);