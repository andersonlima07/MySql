create database db_ecommerce2;

use db_ecommerce2;

create table tb_categoria(
	id bigint auto_increment,
    nomeCateg varchar(255) not null,
    quantidade decimal not null,
	subcateg varchar(255)not null,
    primary key (id)
    
);

use db_ecommerce2;

create table tb_produto(
	id bigint auto_increment,
    nomeProduto varchar(255) not null,
    cor varchar(10),
    modelo varchar(10),
    categoria_id bigint not null,
    
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
    );
    
    insert into tb_categoria(nomeCateg, quantidade, subcateg) values ("Cropped", 2000, "Tiedye");
    insert into tb_categoria(nomeCateg, quantidade, subcateg) values ("Durag", 1100, "Seda");
    insert into tb_categoria(nomeCateg, quantidade, subcateg) values ("Correntes", 5102, "prata");
    insert into tb_produto(nomeProduto, cor, modelo, categoria_id) values ("prod1", "Verde", "mod1", 1);
    insert into tb_produto(nomeProduto, cor, modelo, categoria_id) values ("prod2", "Vermelha", "mod2", 2);
    insert into tb_produto(nomeProduto, cor, modelo, categoria_id) values ("prod3", "Azul", "mod3", 3);
    insert into tb_produto(nomeProduto, cor, modelo, categoria_id) values ("prod4", "Verde", "mod4", 1);
    insert into tb_produto(nomeProduto, cor, modelo, categoria_id) values ("prod5", "Amarelo", "mod5", 2);
    insert into tb_produto(nomeProduto, cor, modelo, categoria_id) values ("prod6", "Verde", "mod1", 1);
    insert into tb_produto(nomeProduto, cor, modelo, categoria_id) values ("prod7", "Vermelha", "mod2", 2);
    insert into tb_produto(nomeProduto, cor, modelo, categoria_id) values ("prod8", "Azul", "mod3", 3);
    insert into tb_produto(nomeProduto, cor, modelo, categoria_id) values ("prod9", "Verde", "mod4", 1);
    insert into tb_produto(nomeProduto, cor, modelo, categoria_id) values ("prod10", "Amarelo", "mod5", 2);
    insert into tb_produto(nomeProduto, cor, modelo, categoria_id) values ("prod11", "Verde", "mod1", 1);
    insert into tb_produto(nomeProduto, cor, modelo, categoria_id) values ("prod12", "Vermelha", "mod2", 2);
    insert into tb_produto(nomeProduto, cor, modelo, categoria_id) values ("prod13", "Azul", "mod3", 3);
    insert into tb_produto(nomeProduto, cor, modelo, categoria_id) values ("prod14", "Verde", "mod4", 1);
    insert into tb_produto(nomeProduto, cor, modelo, categoria_id) values ("prod15", "Amarelo", "mod5", 2);
	
    select*from tb_categoria;
    
    select*from tb_produto;
    
	select * from tb_categoria where quantidade > 2000;
    select * from tb_categoria where quantidade <= 2000;
    SELECT * FROM tb_produto WHERE cor LIKE 'V%';
    
    update tb_produto set cor = "Roxo" where id = 3;
    
	SELECT * FROM tb_produto