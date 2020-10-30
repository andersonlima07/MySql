create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categCurso(
	id bigint auto_increment,
	tipo varchar(255) not null,
	ativo boolean not null,
    
	primary key (id)
);

use db_cursoDaMinhaVida;

create table tb_produtos(
	id bigint auto_increment,
	nome varchar(255) not null,
	preco decimal(10,2) not null,
    disponivel boolean,
    categoria_id bigint not null,
    
	primary key (id),
    foreign key (categoria_id) references tb_categCurso (id)
);


insert into tb_categCurso(tipo, ativo) values ("Programação", true);
insert into tb_categCurso(tipo, ativo) values ("Finanças e Investimentos", true);
insert into tb_categCurso(tipo, ativo) values ("Comunicação", true);
insert into tb_categCurso(tipo, ativo) values ("Admistração", true);

insert into tb_produtos(nome, preco, disponivel, categoria_id) values ("Java", 250.00, true, 1);
insert into tb_produtos(nome, preco, disponivel, categoria_id) values ("Oratória e falar em público", 190.50, true, 3);
insert into tb_produtos(nome, preco, disponivel, categoria_id) values ("JavaScript", 310.99, true, 1);
insert into tb_produtos(nome, preco, disponivel, categoria_id) values ("Excel Avançado", 500.00, true, 2);
insert into tb_produtos(nome, preco, disponivel, categoria_id) values ("Secretariado", 410.99, true, 4);
insert into tb_produtos(nome, preco, disponivel, categoria_id) values ("Lightroom", 360.00, true, 3);
insert into tb_produtos(nome, preco, disponivel, categoria_id) values ("Linux", 275.00, true, 1);
insert into tb_produtos(nome, preco, disponivel, categoria_id) values ("Marketing", 130.99, true, 3);

select * from tb_produtos where preco > 500.00;
select * from tb_produtos where preco >= 300.00 && preco <= 600.00;
select * from tb_produtos where nome like "jav%";

select tb_produtos.nome, tb_produtos.preco, tb_categCurso.ativo from tb_produtos 
inner join tb_categCurso on tb_categCurso.id = tb_produtos.categoria_id;
