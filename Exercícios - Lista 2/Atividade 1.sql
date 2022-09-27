create database db_generation_game_online;

use db_generation_game_online;

create table tb_classes(
	id bigint auto_increment,
    tipo varchar(255) not null,
    descricao varchar(255),
    primary key(id)
);

create table tb_personagens(
	id bigint auto_increment,
    nome varchar(255) not null,
    nivel bigint not null,
    habilidade varchar(255) not null,
    vida bigint not null,
    mana bigint not null,
    classes_id bigint,
    primary key (id),
    foreign key(classes_id) references tb_classes(id)
);

insert into tb_classes(tipo,descricao) 
values("Guerreiro", "Causa um alto dano em Tarefas"),
("Mago", "Causa dano moderado em tarefas."),
("Curandeiro", "Alta defesa contra danos e podem se curar e curar membro da equipe."),
("Gatuno", "Encontra mais itens e ouro e maior chance de causar golpe critico");

insert into tb_personagens(nome, nivel, habilidade, vida, mana,classes_id)
values("Janna", 20, "Ventania", 2559, 650,4),
("Zed", 10, "Shuriken", 1552, 0,5),
("Warwick", 15, "Lobo", 3658,958,1),
("Lux",12,"Luz",1529,1250,3),
("Riven", 13, "Espada",2985, 1251, 1),
("Nami",16,"Águas",2050,1655,4),
("Neeko", 1, "Camaleoa", 950, 650, 3);

select * from tb_classes;
select * from tb_personagens;

select * from tb_personagens where vida > 2000;
select * from tb_personagens where vida > 1000 && vida < 2000;

select * from tb_personagens where nome like "%C%"; -- buscando todes os personagens que possuam a letra C no atributo nome.

select * from tb_personagens inner join tb_classes on tb_personagens.classes_id = tb_classes.id; 

select * from tb_personagens inner join tb_classes on tb_personagens.classes_id = tb_classes.id where tipo = "Curandeiro";


