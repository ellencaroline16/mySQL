use db_cidade_das_carnes;

CREATE TABLE tb_categoria(
ID bigint auto_increment,
Tipo varchar(255) not null,
Fornecedor varchar (255) not null,
primary key (ID)
);

INSERT INTO tb_categoria(Tipo, Fornecedor)
values ("Carne Bovina", "Friboi"),
("Carne Suína","Aurora"),
("Aves", "Sadia"),
("Embutidos", "Sadia");

select * from tb_categoria;

create table tb_produtos(
ID bigint auto_increment,
Nome varchar(255) not null,
Freezer decimal (6,2),
Preco decimal (6,2),
Quantidade varchar (255) not null,
produtos_ID bigint not null, -- evidênciando a informação que ambas tem em comum 
primary key(ID),
foreign key (produtos_ID) references tb_categoria(ID) -- referenciando o que as duas tabelas tem em comum 
);

INSERT INTO tb_produtos (Nome, Freezer, Preco, Quantidade, produtos_ID)
values ("Almongedas",1, 30.00, "1kg",1),
("Bisteca",2, 25.50, "1,2kg",2),
("Tulipa temperada ",3,28.90, "1kg",3),
("Salsicha Hot Dog",4, 18.00, "600gr",4),
("Contra Filé p/ churrasco",1, 160.00, "2.700kg",1),
("Bife a role",1, 80.00, " 2kg",1),
("Filé de Frango",3, 22.00, "1kg",3),
("Hambúrguer artesanal", 1, 30.00, "800gr",1),
("Lombo suíno",2, 50.00, " 2kg",2);

select * from tb_produtos  where Preco > 50.00;
select * from tb_produtos where Preco >= 50.00 and Preco <= 150; -- seguindo a lógica do enunciado
select * from tb_produtos where Sabor LIKE 'C%'; -- determino aqui que é só a letra C 


select * from tb_categoria
inner join tb_produtos
on tb_categoria.ID = tb_produtos.produtos_ID;

select * from tb_categoria
inner join tb_produtos
on tb_categoria.ID = tb_produtos.produtos_ID
where tb_categoria.Tipo = 'Aves' ; -- estou buscando um grupo específico
