create database db_ecommerce;
use db_ecommerce;

-- criando a tabela produtos
create table tb_produtos(
	id_produto bigint auto_increment,
    nome_prod varchar(255) not null,
    tamanho varchar(5) not null,
    quantidade int,
    preco decimal(8,5) not null,
    estoque boolean not null,
    
    primary key(id_produto)
);

-- alterando tamanho varchar(5) para tamanho varchar(15) 
alter table tb_produtos modify tamanho varchar(15) not null;

-- inserindo os valores na tabela
insert into tb_produtos(nome_prod,tamanho,quantidade,preco,estoque) values ("Anel Lilac em Banho Prata","Regulável",20,"55.90",true);
insert into tb_produtos(nome_prod,tamanho,quantidade,preco,estoque) values ("Anel Lilac em Banho Ouro","Regulável",20,"55.90",true);
insert into tb_produtos(nome_prod,tamanho,quantidade,preco,estoque) values ("Tornozeleira de Pérolas","20 cm",7,"41.90",true);
insert into tb_produtos(nome_prod,tamanho,quantidade,preco,estoque) values ("Piercing em Banho Ouro","Ajustável",30,"22.90",false);
insert into tb_produtos(nome_prod,tamanho,quantidade,preco,estoque) values ("Pulseira Riviera em Banho Prata","17 cm",37,"30.90",false);
insert into tb_produtos(nome_prod,tamanho,quantidade,preco,estoque) values ("Chocker Riviera em Banho Ouro","30 cm",45,"55.90",true);
insert into tb_produtos(nome_prod,tamanho,quantidade,preco,estoque) values ("Brinco Mini Argola Lis em Banho Ouro","2.5 cm",15,"44.90",false);
insert into tb_produtos(nome_prod,tamanho,quantidade,preco,estoque) values ("Brinco de Argola Ella em Banho Prata","5 cm",60,"49.90",true);

alter table tb_produtos modify preco decimal(8,2) not null;

-- retornando os produtos maiores que R$ 500.00
select nome_prod,tamanho,quantidade,CONCAT('R$ ', FORMAT(preco, 2,'pt_BR')) as preco,estoque from tb_produtos where preco > 500.00;

-- retornando os produtos menore que R$ 500.00
select id_produto,nome_prod,tamanho,quantidade,CONCAT('R$ ', FORMAT(preco, 2,'pt_BR')) as preco,estoque from tb_produtos where preco < 500.00;

-- atualizando um dado da tabela: quantidade do Brinco de Argola Ella em Banho Prata
update tb_produtos set quantidade = 55 where id_produto = 8;


