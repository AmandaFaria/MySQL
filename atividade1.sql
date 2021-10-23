create database db_rh;
use db_rh;

-- criando a tabela funcionaries
create table tb_funcionaries(
	id bigint auto_increment,
	nome varchar(255) not null,
    email varchar(255) not null,
    cpf varchar(15),
    endereco varchar(355) not null,
    salario decimal(9,5) not null,
    
    primary key(id)
);

-- inserindo dados na tabela funcionaries
insert into tb_funcionaries(nome,email,cpf,endereco,salario) values ("Miguel Daniel Drumond","migueldanieldrumond-83@gmail.com","093.673.846-45","Rua Professor João Ricardo Lima",7200.00);
insert into tb_funcionaries(nome,email,cpf,endereco,salario) values ("Giovanni Lucas Freitas","ggiovannilucasfreitas@gmail.com","953.708.964-96","Rua Sambe",7200.90);
insert into tb_funcionaries(nome,email,cpf,endereco,salario) values ("Andrea Luzia Nogueira","andrealuzianogueira_@gmail.com","694.834.005-97","Rua Alameda Nona",8400.00);
insert into tb_funcionaries(nome,email,cpf,endereco,salario) values ("Bianca Luzia da Mata","biancaluziadamata_@gmail.com","361.717.745-02","Rua Projetada 266",7200.00);
insert into tb_funcionaries(nome,email,cpf,endereco,salario) values ("Ryan Kauê Thales Silveira","ryankauethalessilveira-86@gmail.com","923.367.140-27","Rua Travessa Paulo Sarasate",1500.00);

-- funcionaries com salario maior que 2000
select nome, CONCAT('R$ ', FORMAT(salario, 2,'pt_BR')) as salario from tb_funcionaries where salario > 2000.00; 

-- funcionaries com salario menor que 2000
select nome,CONCAT('R$ ', FORMAT(salario, 2,'pt_BR')) as salario from tb_funcionaries where salario < 2000.00; 

-- alterando o decimal (9,5) para decimal (9,2)
alter table tb_funcionaries modify salario decimal (9,2);

-- atualizando o salario do Giovanni (id = 2)
update tb_funcionaries set salario = 7850.50 where id = 2;












