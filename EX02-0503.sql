CREATE DATABASE db_ecommerce;
use db_ecommerce;

CREATE TABLE tb_produtos (
    ID bigint AUTO_INCREMENT,
    Nome VARCHAR(255),
    Tipo VARCHAR (255),
    Preco DECIMAL(10,2),
    Estoque INT,
    Marca VARCHAR(255),
    ativo boolean,
    primary key (ID)
);


INSERT INTO tb_produtos(Nome, Tipo, Preco, Estoque, Marca)
values ("T","Jordan", 900.50, 10, "Nike");

INSERT INTO tb_produtos(Nome, Tipo, Preco, Estoque, Marca)
VALUES ("T", "Tradicional", 150.90, 20, "Nike");

INSERT INTO tb_produtos(Nome, Tipo, Preco, Estoque, Marca)
values ("T", "Ultrarange", "400.90", 8,"Vans" );

INSERT INTO tb_produtos(Nome, Tipo, Preco, Estoque, Marca)
values ("C", "Tshirt", "120.90", "6", "Adidas" );

INSERT INTO tb_produtos(Nome, Tipo, Preco, Estoque, Marca)
values ("C", "Tradicional", "140.90", "25", "Puma");

INSERT INTO tb_produtos(Nome, Tipo, Preco, Estoque, Marca)
values ("C", "Tshirt", "130.90", "12", "Nike");

INSERT INTO tb_produtos(Nome, Tipo, Preco, Estoque, Marca)
values ("T", "OldSchool", 199.90, 12, "Vans");


update tb_produtos set preco = 600.00 where ID = 3;

select * from tb_produtos

-- select * from tb_produtos Where Preco > 500;
select * from tb_produtos where Preco < 500;
select * from tb_produtos where Preco > 500;