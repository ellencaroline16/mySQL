use db_farmacia_bem_estar;

CREATE TABLE tb_categoria(
ID bigint auto_increment,
Setor varchar(255) not null,
Descricao varchar(255) not null,
primary key (ID)
);

-- inserindo as informações em linhas e colunas, não estou encontrando algo para além de estoque que seja intuitivo 
INSERT INTO tb_categoria(Setor, Descricao)
values ("Remédio", "Remédios genéricos e originais"),
("Itens de Cabelo","Lolla, Skala e Braé"),
("Saúde Bucal", "Colgate, Oral B e Curapox"),
("SkinCare", "BioDerma, Vichy e Nivea"),
("Cosméticos", " Marcas variadas");

select * from tb_categoria;

-- criando a tabela com mais atributos
create table tb_produtos(
ID bigint auto_increment,
Nome varchar(255) not null,
Prateleira decimal (6,2),
Preco decimal (6,2),
Marca varchar (255) not null,
produtos_ID bigint not null, -- evidênciando a informação que ambas tem em comum 
primary key(ID),
foreign key (produtos_ID) references tb_categoria(ID) -- referenciando o que as duas tabelas tem em comum 
);

INSERT INTO tb_produtos (Nome, Prateleira, Preco, Marca, produtos_ID)
values ("Pantoprazol",2, 30.00, "Medley", 1),
("Shampoo de banana",1, 25.50,"Lolla", 2),
("Enxaguante bucal 12 ",3,24.90, "Colgate", 2),
("89 minerals",4, 110.50," Vichy",2),
("Pó translúcido - solto ",5, 60.00, "Nina Secrets",5),
("Desvenlafaxina",2, 80.00,"Medley",1),
("Donaren",2, 70.00,"Medley",1),
("Protetor Solar fator 70", 4, 90.00,"Bioderma",4),
("Escova de dente",3, 5.00, "Oral B", 2);

select * from tb_produtos;

select * from tb_produtos  where Preco > 50.00;
select * from tb_produtos where Preco >= 5 and Preco <= 60; -- seguindo a lógica do enunciado
select * from tb_produtos where Sabor LIKE 'C%'; -- determino aqui que é só a letra C 



select * from tb_categoria 
inner join tb_produtos 
on tb_categoria.ID = tb_produtos.produtos_ID; -- fazer sempre nessa ordem PK > FK 

select * from tb_categoria 
inner join tb_produtos
on tb_categoria.ID = tb_produtos.produtos_ID
where tb_categoria.Setor = "Cosméticos"; 
