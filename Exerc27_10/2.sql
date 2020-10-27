create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
	id bigint auto_increment,
    nome varchar(255) not null,
    preco decimal(10,2) not null,
    marca varchar(255),
    quantidade bigint not null,
    primary key (id)
);

insert into tb_produtos(nome, preco, quantidade, marca) values ("Celular 1", 4500.00, 10, "Iphone");
insert into tb_produtos(nome, preco, quantidade, marca) values ("Celular 2", 3500.00, 20, "Samsung");   
insert into tb_produtos(nome, preco, quantidade, marca) values ("Celular 3", 2350.00, 5, "Motorola");
insert into tb_produtos(nome, preco, quantidade, marca) values ("Celular 4", 4320.00, 7, "Sony");
insert into tb_produtos(nome, preco, quantidade, marca) values ("Celular 5", 2000.99, 9, "Xiaomi");
insert into tb_produtos(nome, preco, quantidade, marca) values ("Celular 6", 1500.99, 8, "LG");
insert into tb_produtos(nome, preco, quantidade, marca) values ("Celular 7", 1850.99, 2, "Asus");
insert into tb_produtos(nome, preco, quantidade, marca) values ("Celular 8", 1900.99, 6, "Nokia");    

select*from tb_produtos where preco < 500;
select*from tb_produtos where preco > 500;

update tb_produtos set marca = "SonyEricsson" where id = 8;

select*from tb_produtos