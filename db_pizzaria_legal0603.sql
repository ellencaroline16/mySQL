use db_pizzaria_legal;

CREATE TABLE tb_pizzas(
ID bigint auto_increment,
Tipo_de_massa varchar(255) not null,
Preco decimal (10,2),
primary key (ID)
);

-- inserindo as informações em linhas e colunas
INSERT INTO tb_pizzas(Tipo_de_massa, Preco)
values ("Massa Napolitana", 100.00),
("Massa sem glúten",70.00),
("Massa fina", 44.00),
("Massa tradicional_brasileira", 40.00),
("Massa vegana", 65.00);

select * from tb_pizzas;
-- esse select irá me mostrar o ids daqui p/ eu poder referenciar na fk 

-- criando a tabela com mais atributos
create table tb_categoria(
ID bigint auto_increment,
Sabor varchar(255) not null,
Ingredientes varchar(255) not null,
Tamanho_em_pedacos decimal (6,2),
Tipo_de_molho varchar(255) not null,
categoria_ID bigint not null, -- evidênciando a informação que ambas tem em comum 
primary key(ID),
foreign key (categoria_ID) references tb_pizzas(ID) -- referenciando o que as duas tabelas tem em comum 
);

-- alimentando a as informações nas linhas e colunas na tabela personagem
INSERT INTO tb_categoria (Sabor, Ingredientes, Tamanho_em_pedacos, Tipo_de_molho, categoria_ID)
values ("Mussarela","Mussarela da marca X ", 8, "Molho vermelho",4),
("Calabresa","Linguiça calabresa aurora e cebola roxa",12,"Molho vermelho",4),
("Frango c/ catupiry","Frango desfiado e temperado c/ catupiry original ",8,"Molho vermelho",4),
("Rúcula c/ tomate seco","Rúcula fresca c/ tomate seco ",6,"Molho vermelho",3),
("Brócolis c/ Bacon","Brócolis aldente c/ bacon em cubos",6,"Molho branco",2),
("Portuguesa","Mussarela, bacon, presunto, ovo, ervilha, cebola, milho",8,"Molho vermelho",1),
("A moda da casa","Presunto de parma, azeite trufado, burrata assada", 12,"Molho vermelho",4),
("Peito de peru c/ catupiry","Peito de peru fresco c/ catupiry original", 6,"Molho branco",1),
("Salaminho c/ queijo", "salame cortado fino e em rodelas c/ mussarela", 8,"Molho vermelho",4);

select * from tb_pizzas  where Preco > 45.00;
select * from tb_pizzas where Preco >= 50 and Preco <= 100; -- seguindo a lógica do enunciado
select * from tb_categoria where Sabor LIKE 'M%'; -- determino aqui que é só a letra C 

select * from tb_categoria c -- p significa o apelido
inner join tb_pizzas p 
on p.ID = c.categoria_ID; -- estou chamando o ID da tabela pizza, e a coluna categoria ID na tabela categoria

select * from tb_pizzas p -- p significa o apelido
inner join tb_categoria c 
on p.ID = c.categoria_ID
where c.Sabor = "Calabresa" ; -- estou buscando um grupo específico


