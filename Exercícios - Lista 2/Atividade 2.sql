CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT,
    tipo VARCHAR(7),
    tamanho VARCHAR(25),
    PRIMARY KEY(id)
);

CREATE TABLE tb_pizzas (
	id BIGINT AUTO_INCREMENT,
    sabor VARCHAR(255),
    preco DECIMAL(6,2),
    quantidade BIGINT,
    sabor_borda VARCHAR(50),
    categorias_id BIGINT, 
    PRIMARY KEY (id),
    FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (tipo, tamanho)
VALUES("Doce", "Grande"),("Doce","Médio"),("Doce","Pequeno"),
("Salgado","Grande"),("Salgado","Médio"),("Salgado","Pequeno");

SELECT * FROM tb_categorias;

INSERT INTO tb_pizzas (sabor, preco, quantidade, sabor_borda,categorias_id)
VALUES ("Calabresa",54.00, 5, "Cheddar",4),
("Pepperoni",110.00, 3, "Catupiry",6),
("Brigadeiro",64.00, 2, "Nutella",1),
("Banana com Canela",70.00, 2, "Leite Condensado",2),
("Mussarela",60.00, 7, "Cheddar",5),
("Bacon",59.00, 5, "Catupiry",6),
("Portuguesa",44.00, 2, "Cheddar",5),
("Brócolis",39.00, 1, "Requeijão",4);
SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas where preco > 45;

SELECT * FROM tb_pizzas WHERE preco > 50 && preco < 100;

SELECT * FROM tb_pizzas WHERE sabor like "%M%";

SELECT * FROM tb_pizzas inner join tb_categorias on tb_pizzas.categorias_id = tb_categorias.id;

SELECT * FROM tb_pizzas inner join tb_categorias on tb_pizzas.categorias_id = tb_categorias.id WHERE tipo = "Doce";

