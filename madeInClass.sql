create database db_lojageneration;
use db_lojageneration;
create table tb_categorias(
	id bigint(5) auto_increment,
    descricao varchar(255) not null,
    primary key(id)
);

create table tb_produtos(
	id bigint(5) auto_increment,
	nome varchar(255) not null,
    preco decimal(6,2) not null,  -- precisa ter 6 digitos antes da vírgula (999999,99)
    qtproduto int not null,
    categoria_id bigint,
    primary key(id),
    foreign key(categoria_id) references tb_categorias(id)
);

insert into tb_categorias (descricao) value ("Periférico");
insert into tb_categorias (descricao) value ("Software");
insert into tb_categorias (descricao) value ("Adesivos");

select * from tb_categorias;

insert into tb_produtos(nome,preco,qtproduto,categoria_id) values ("Mouse",20.00, 4,1);
insert into tb_produtos(nome,preco,qtproduto,categoria_id) values ("Teclado",350.00, 9,1);
insert into tb_produtos(nome,preco,qtproduto,categoria_id) values ("Meninas Super Poderosas",10.00, 15,3);

select * from tb_produtos;

select * from tb_produtos where nome like "M%"; -- que começa com M e se for para onde tem a letra "%M"

select * from tb_produtos ;

select * from tb_produtos right join tb_categorias on tb_produtos.categoria_id = tb_categorias.id;

select * from tb_produtos inner join tb_categorias on tb_produtos.categoria_id = tb_categorias.id;