use db_curso_da_minha_vida;

CREATE TABLE tb_categoria(
ID bigint auto_increment,
Linguagem varchar(255) not null,
Grau_de_dificuldade varchar (255) not null,
primary key (ID)
);

INSERT INTO tb_categoria(Linguagem, Grau_de_dificuldade)
values ("Java", "Alto"),
("Phyton","Médio"),
("C#", "Razoável"),
("React", "Mais ou menos"),
("MySQL", "Fácil");

select * from tb_categoria;

create table tb_produtos(
ID bigint auto_increment,
Nome_curso varchar(255) not null,
Preco decimal (6,2),
Duracao varchar(255) not null,
Nota_de_avaliacao int,
produtos_ID bigint not null, -- evidênciando a informação que ambas tem em comum 
primary key(ID),
foreign key (produtos_ID) references tb_categoria(ID) -- referenciando o que as duas tabelas tem em comum 
);

INSERT INTO tb_produtos (Nome_curso, Preco, Duracao, Nota_de_avaliacao, produtos_ID)
values ("Java para iniciantes", 600.00, " 3 meses", 9, 1),
("Java avançado", 1000.00, " 6 meses", 10, 1),
("Phyton para iniciantes", 400.00, " 3 meses", 8, 2),
("Phyton avançado", 900.00, " 3 meses", 9,  2),
("React para iniciantes", 620.00, " 3 meses", 8, 4),
("React avançado", 1200.00, " 3 meses", 10, 4),
("MySQLpara iniciantes", 600.00, " 3 meses", 9, 5),
("C# para iniciantes", 600.00, " 3 meses", 9,3);

select * from tb_produtos  where Preco > 500.00;
select * from tb_produtos where Preco >= 600.00 and Preco <= 1000.00; -- seguindo a lógica do enunciado
select * from tb_produtos where Nome_curso LIKE 'J%'; -- determino aqui que é só a letra C 

-- verificar esses inner join
select * from tb_categoria 
inner join tb_produtos
on tb_categoria.ID = tb_produtos.produtos_ID;

select * from tb_categoria
inner join tb_produtos
on tb_categoria.ID = tb_produtos.produtos_ID
where tb_categoria.Linguagem = 'Java' ; -- estou buscando um grupo específico
