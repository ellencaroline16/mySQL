create table tb_funcionarios(
id bigint auto_increment,
nome varchar(100) not null,
cargo varchar(50) not null,
faculdade varchar(80) not null,
departamento varchar (60) not null,
primary key(id)
)

INSERT INTO tb_funcionarios(nome, salario, cargo, faculdade, departamento) values ("Dori", 20000.00, "Dev Senior", "USP", "Tech");
INSERT INTO tb_funcionarios(nome, salario, cargo, faculdade, departamento) values ("Dafne", 20000.00, "Dev Senior", "FIAP", "Tech");
INSERT INTO tb_funcionarios(nome, salario, cargo, faculdade, departamento) values ("Bya", 20000.00, "TechLead", "USP", "Tech");
INSERT INTO tb_funcionarios(nome, salario, cargo, faculdade, departamento) values ("Fran", 18000.00, "TechLead QA", "USP", "Tech");
INSERT INTO tb_funcionarios(nome, salario, cargo, faculdade, departamento) values ("Thais", 15000, "Especialista Azure", "FIAP", "Tech");
INSERT INTO tb_funcionarios(nome, salario, cargo, faculdade, departamento) values ("Alê", 25000.00, "Arquiteta de Software", "FIAP", "Tech");

select * from tb_funcionarios


select * from tb_funcionarios where salario > 2000.00; 

select * from tb_funcionarios where salario > 2000.00;
select * from tb_funcionarios where salario < 2000.00;