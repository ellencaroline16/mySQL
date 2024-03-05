CREATE DATABASE db_escola;

use db_escola;

CREATE TABLE tb_estudantes(
ID bigint AUTO_INCREMENT,
Nome VARCHAR(255),
Idade int,
Curso VARCHAR(255),
Faculdade VARCHAR(255),
Estado VARCHAR(255),
Nota DECIMAL (2,1),
primary key (ID)
);


INSERT INTO tb_estudantes(Nome, Idade, Curso, Faculdade, Estado, Nota)
values ("Ana",25,"Engenharia de Software", "FIAP", "SP",7.5);

INSERT INTO tb_estudantes(Nome, Idade, Curso, Faculdade, Estado, Nota)
values ("Bia",22,"Engenharia de Software", "FIAP", "SP",9.0);

INSERT INTO tb_estudantes(Nome, Idade, Curso, Faculdade, Estado, Nota)
values ("Fernanda",29,"Engenharia de Software", "FIAP", "SP",6.0);

INSERT INTO tb_estudantes(Nome, Idade, Curso, Faculdade, Estado, Nota)
values ("Sabrina",30,"Engenharia de Software", "FIAP", "SP",6.0);

INSERT INTO tb_estudantes(Nome, Idade, Curso, Faculdade, Estado, Nota)
values ("Karol",27,"Engenharia de Software", "FIAP", "SP",8.0);


select * from tb_estudantes where Nota < 7.0;
select * from tb_estudantes where Nota > 7.0;