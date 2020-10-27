create database db_rh2;

use db_rh2;

create table tb_cargo(
	id bigint auto_increment,
    nome varchar(255) not null,
    salario decimal not null,
    setor boolean,
    primary key (id)
    
);

use db_rh2;

create table tb_funcionario(
	id bigint auto_increment,
    nome varchar(255) not null,
    idade decimal(10),
    dependentes decimal(10),
    cargo_id bigint not null,
    
    primary key (id),
    foreign key (cargo_id) references tb_cargo (id)
    );
    
    insert into tb_cargo(nome, salario, setor) values ("Analista", 2500, true);
    insert into tb_cargo(nome, salario, setor) values ("Desenvolvedor", 3100, true);
    insert into tb_cargo(nome, salario, setor) values ("Recrutador", 1700, true);
    
    insert into tb_funcionario(nome, idade, dependentes, cargo_id) values ("Anderson", 22, 3, 1);
    insert into tb_funcionario(nome, idade, dependentes, cargo_id) values ("Vanessa", 25, 1, 2);
    insert into tb_funcionario(nome, idade, dependentes, cargo_id) values ("Luis", 27, 1, 3);
    insert into tb_funcionario(nome, idade, dependentes, cargo_id) values ("Vinicius", 32, 5, 1);
    insert into tb_funcionario(nome, idade, dependentes, cargo_id) values ("Renata", 24, 4, 3);
    
	select*from tb_funcionario;
    
    select*from tb_cargo;
    
    insert into tb_funcionario(nome, idade, dependentes, cargo_id) values ("Estela", 22, 0, 1);
    insert into tb_funcionario(nome, idade, dependentes, cargo_id) values ("Lucas", 25, 1, 2);
    insert into tb_funcionario(nome, idade, dependentes, cargo_id) values ("Luisa", 27, 1, 3);
    insert into tb_funcionario(nome, idade, dependentes, cargo_id) values ("Guilherme", 32, 5, 1);
    insert into tb_funcionario(nome, idade, dependentes, cargo_id) values ("Renato", 24, 4, 3);
	insert into tb_funcionario(nome, idade, dependentes, cargo_id) values ("Andressa", 19, 3, 1);
    insert into tb_funcionario(nome, idade, dependentes, cargo_id) values ("Vania", 25, 1, 2);
    insert into tb_funcionario(nome, idade, dependentes, cargo_id) values ("Laura", 28, 1, 3);
    insert into tb_funcionario(nome, idade, dependentes, cargo_id) values ("Victor", 31, 5, 1);
    insert into tb_funcionario(nome, idade, dependentes, cargo_id) values ("Maria", 20, 4, 3);

	select * from tb_cargo where salario > 2000;
    select * from tb_cargo where salario < 2000;
    SELECT * FROM tb_funcionario WHERE nome LIKE 'c%';
    
    update tb_funcionario set nome = "Anderson Lima" where id = 1;
    
	SELECT * FROM tb_funcionario
    
    
    
    
    
    
