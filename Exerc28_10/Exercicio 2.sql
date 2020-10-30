create database db_construindo_minha_vida;

use db_construindo_minha_vida;

create table tb_categoria(
	id bigint auto_increment,
    tipo varchar(255) not null,
	localUso varchar(255) not null,
	ativo boolean not null,
    
	primary key (id)
);

use db_construindo_minha_vida;

create table tb_produto(
	id bigint auto_increment,
	nome varchar(255) not null,
	preco decimal(10,2) not null,
    disponivel boolean,
    categ_id bigint not null,
    
	primary key (id),
    foreign key (categ_id) references tb_categoria(id)
);


insert into tb_categoria(tipo, localUso, ativo) values ("Tintas", "Interno", true);
insert into tb_categoria(tipo, localUso, ativo) values ("Revestimentos", "Externo", true);
insert into tb_categoria(tipo, localUso, ativo) values ("Decoração", "Interno", true);
insert into tb_categoria(tipo, localUso, ativo) values ("Acessórios", "Flexível", true);

insert into tb_produto(nome, preco, disponivel, categ_id) values ("Coral", 250.00, true, 1);
insert into tb_produto(nome, preco, disponivel, categ_id) values ("Gesso", 190.50, true, 2);
insert into tb_produto(nome, preco, disponivel, categ_id) values ("Papel de Parede", 310.99, true, 3);
insert into tb_produto(nome, preco, disponivel, categ_id) values ("Furadeira", 500.00, true, 4);
insert into tb_produto(nome, preco, disponivel, categ_id) values ("Martelo", 410.99, true, 4);
insert into tb_produto(nome, preco, disponivel, categ_id) values ("Suvinil", 360.00, true, 1);
insert into tb_produto(nome, preco, disponivel, categ_id) values ("Quadros", 275.00, true, 3);
insert into tb_produto(nome, preco, disponivel, categ_id) values ("Cimento", 130.99, true, 2);

select * from tb_produto where preco > 500.00;
select * from tb_produto where preco >= 300.00 && preco <= 600.00;
select * from tb_produto where nome like "Suv%";

select tb_produto.nome, tb_produto.preco, tb_categoria.tipo from tb_produto 
inner join tb_categoria on tb_categoria.id = tb_produto.categ_id;


