create database db_escola;

use db_escola;

create table tb_alunos(
Registro bigint auto_increment,
nome varchar(255) not null,
idade int not null,
turma varchar(255) not null,
nota decimal(10,2) not null, 
primary key (Registro)
);
insert into tb_alunos(nome, idade, turma, nota) values ("Anderson", 22, "T10", 10);
insert into tb_alunos(nome, idade, turma, nota) values ("Vinicius", 24, "T09", 7.6);
insert into tb_alunos(nome, idade, turma, nota) values ("Vanessa", 26, "T3", 9.80);
insert into tb_alunos(nome, idade, turma, nota) values ("Rozi", 35, "T4", 10);
insert into tb_alunos(nome, idade, turma, nota) values ("Victor", 18, "T7", 8.90);
insert into tb_alunos(nome, idade, turma, nota) values ("Nicolas", 21, "T6", 9.75);
insert into tb_alunos(nome, idade, turma, nota) values ("Felipe", 22, "T9", 5.80);
insert into tb_alunos(nome, idade, turma, nota) values ("Estela", 27, "T2", 7.50);

select * from tb_alunos;

select * from tb_alunos where nota > 6.5;
select * from tb_alunos where nota < 6.5;

update tb_alunos set nome = "Anderson Lima" where Registro = 1;

select * from tb_alunos