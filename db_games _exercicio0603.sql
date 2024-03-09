use db_generation_game_online;

-- criando a tabela de classes com 2 atributos
CREATE TABLE tb_classes(
ID bigint auto_increment,
Categoria varchar(255) not null,
Grupo varchar(255) not null,
primary key (ID)
);

-- inserindo as informações em linhas e colunas
INSERT INTO tb_classes(Categoria, Grupo)
values ("Livre","Ninja"),
("Maiores de 13 anos","Assassino"),
("Livre", "Herói"),
("Livre", "Heroína"),
("Maiores de 16 anos", "Poderoso Chefão");

select * from tb_classes;

-- criando a tabela com mais atributos
create table tb_personagens(
ID bigint auto_increment,
Nome varchar(255) not null,
Genero varchar(255) not null,
Poder_de_ataque decimal,
Poder_de_defesa decimal,
Grupo varchar(255) not null,
classes_ID bigint not null, -- evidênciando a informação que ambas tem em comum 
primary key(ID),
foreign key (classes_ID)references tb_classes(ID) -- referenciando o que as duas tabelas tem em comum 
);


-- alimentando a as informações nas linhas e colunas na tabela personagem
INSERT INTO tb_personagens(Nome, Genero, Poder_de_ataque, Poder_de_defesa, Grupo, classes_ID)
values ("Katana","Feminino", 5000, 8000,"Assassino",2),
("Michelangelo","Masculino",900,1000, "Ninja",1),
("Rafael","Masculino",1500,2500, "Ninja",1),
("Leonardo","Masculino",1890,2120,"Ninja",1),
("Donatello","Masculino",4000,2000,"Ninja",1),
("Viúva Negra","Feminino",1050,1900,"Heroína",4),
("Wanda Vision","Feminino", 15000,8000,"Heroína",4),
("Capitão América","Masculino", 2500,1600,"Herói",3),
("Bowser Koopa","Masculino", 1000, 2200,"Poderoso Chefão",5);

select * from tb_personagens;

select * from tb_personagens where Poder_de_ataque > 2000;
select * from tb_personagens where Poder_de_defesa >= 1000 and Poder_de_defesa <= 2000; -- seguindo a lógica do enunciado
select * from tb_personagens where Nome LIKE 'C%'; -- determino aqui que é só a letra C 
select * from tb_personagens p -- p significa o apelido
inner join tb_classes c 
on p.classes_ID = c.ID;

select * from tb_personagens p -- p significa o apelido
inner join tb_classes c 
on p.classes_ID = c.ID
where p.Grupo = 'Ninja' ; -- estou buscando um grupo específico