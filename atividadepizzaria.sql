CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
	id bigint auto_increment,
    tipo varchar(255) not null,
    tamanho varchar(255) not null,
    refrigerante boolean not null,
    
    primary key(id)
);

CREATE TABLE tb_pizza(
	id bigint auto_increment,
    nome varchar(255) not null,
    ingrediente varchar(255) not null,
    qtd_pizza int not null,
    preco decimal (6,2) not null,
    observacao varchar(255),
   categoria_id bigint,    
   
    primary key (id),
    foreign key (categoria_id) references tb_categoria(id)
);

INSERT INTO tb_categoria(tipo,tamanho,refrigerante) values ("salgada","grande",true);
INSERT INTO tb_categoria(tipo,tamanho,refrigerante) values ("salgada","média",false);
INSERT INTO tb_categoria(tipo,tamanho,refrigerante) values ("doce","pequena",true);
INSERT INTO tb_categoria(tipo,tamanho,refrigerante) values ("salgada","pequena",false);
INSERT INTO tb_categoria(tipo,tamanho,refrigerante) values ("doce","média",true);

INSERT INTO tb_pizza(nome,ingrediente,qtd_pizza,preco,observacao,categoria_id) values ("Frango com Catupiry","frango desfiado, cebola, oregano e catupiry",2,"59.90","sem cebola",2);
INSERT INTO tb_pizza(nome,ingrediente,qtd_pizza,preco,categoria_id) values ("Peperoni","mussarela, peperoni e oregano",1,"69.90",1);
INSERT INTO tb_pizza(nome,ingrediente,qtd_pizza,preco,categoria_id) values ("Napolitana","mussarela, tomate, oregano e parmesão ralado",3,"27.90",4);
INSERT INTO tb_pizza(nome,ingrediente,qtd_pizza,preco,categoria_id) values ("4 Queijos","mussarela, requeijão, gorgonzola, oregano e parmesão ralado",2,"71.90",2);
INSERT INTO tb_pizza(nome,ingrediente,qtd_pizza,preco,observacao,categoria_id) values ("Mussarela","queijo mussarela e oregano",1,"69.90","orégano extra",1);
INSERT INTO tb_pizza(nome,ingrediente,qtd_pizza,preco,observacao,categoria_id) values ("Portuguesa","mussarela, presunto, ovo, azeitona, cebola, oregano e pimentão verde",1,"30.90","sem pimentão verde",2);
INSERT INTO tb_pizza(nome,ingrediente,qtd_pizza,preco,categoria_id) values ("Laka Oreo","coberta com chocolate Laka Oreo cremoso",1,"20.90",3);
INSERT INTO tb_pizza(nome,ingrediente,qtd_pizza,preco,categoria_id) values ("Ovomaltine","recheada com creme de baunilha e creme de Ovomaltine crocante",1,"30.90",4);

-- alterando os dados do Ovomaltine
update tb_pizza set categoria_id = 5 where id = 8;

-- select que retorne os Produtos com o valor maior do que 45 reais
select * from tb_pizza where preco > 45.00;

-- trazendo os Produtos com valor entre 29 e 60 reais
select * from tb_pizza where preco between 29.00 and 60.00;

-- select utilizando LIKE buscando os Produtos com a letra C
select * from tb_pizza where nome like "%c%";

-- Inner join entre tabela categoria e pizza
select tb_pizza.id, tb_pizza.nome, tb_pizza.preco, tb_categoria.refrigerante 
from tb_pizza
inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id order by tb_pizza.id;

-- trazendo todos os produtos que são pizza doce
select tb_pizza.id, tb_pizza.nome, tb_pizza.preco, tb_categoria.tipo
from tb_pizza
inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where tipo = "doce";


