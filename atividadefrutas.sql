create database db_cidade_das_frutas;
use db_cidade_das_frutas;

create table tb_categoria(
	id bigint auto_increment,
    categoria varchar(255) not null,
    oferta boolean not null,
    ativo boolean not null,
    
    primary key(id)
);

insert into tb_categoria(categoria,oferta,ativo) values ("Ácidas",true,true);
insert into tb_categoria(categoria,oferta,ativo) values ("Doces",true,true);
insert into tb_categoria(categoria,oferta,ativo) values ("Semiácidas",false,false);
insert into tb_categoria(categoria,oferta,ativo) values ("Oleoginosas",false,true);
insert into tb_categoria(categoria,oferta,ativo) values ("Monofágicas",true,true);

create table tb_produtos(
	id bigint auto_increment,
    nome varchar(255) not null,
    preco decimal(6,2) not null,
    unidade int not null,
    descricao varchar(255),
    dt_validade date not null,
    categoria_id bigint,
    primary key(id),
    foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_produtos(nome,preco,unidade,descricao,dt_validade,categoria_id) values ("Morango na bandeja – 250g",11.90,2,"Vitamina C, Ferro, Vitamina B6, Magnésio", "2021-11-09",1);
insert into tb_produtos(nome,preco,unidade,descricao,dt_validade,categoria_id) values ("Laranja Bahia Importada Kg",11.00,1,"Vitamina C, Ferro, Vitamina B6, Magnésio", "2021-11-09",1);
insert into tb_produtos(nome,preco,unidade,descricao,dt_validade,categoria_id) values ("Banana Maça Kg",9.90,1,"Vitamina C, Ferro, Vitamina B6, Magnésio, Cálcio, Vitamina D, Cobalamina", "2021-11-02",2);
insert into tb_produtos(nome,preco,unidade,descricao,dt_validade,categoria_id) values ("Cereja Em Calda Vidro 100g",14.00,1,"Vitamina A, Vitamina C, Potássio, Cálcio", "2021-11-06",3);
insert into tb_produtos(nome,preco,unidade,descricao,dt_validade,categoria_id) values ("Coco Seco Unidade",6.90,4,"Vitamina C, Cálcio, Fósforo, Ferro", "2021-11-06",4);
insert into tb_produtos(nome,preco,unidade,descricao,dt_validade,categoria_id) values ("Avelã",9.90,3,"Fibras, Ferro, Fósforo, Ácido Fólico, Cálcio, Magnésio e Vitaminas do complexo B", "2021-11-06",4);
insert into tb_produtos(nome,preco,unidade,descricao,dt_validade,categoria_id) values ("Melância",32.90,1,"Vitaminas do complexo B, Vitamina C, Fibras, Magnésio, Cálcio, Potássio, Fósforo.", "2021-11-02",5);
insert into tb_produtos(nome,preco,unidade,descricao,dt_validade,categoria_id) values ("Melão",9.89,2,"cálcio, Vitamina C, Vitamina A e as Vitaminas do Complexo B", "2021-11-02",5);

select * from tb_produtos where preco > 50.00;

select * from tb_produtos where preco between 3.00 and 60.00;

select * from tb_produtos where nome like "%c%";

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

select tb_produtos.id,tb_produtos.nome, DATE_FORMAT(tb_produtos.dt_validade, "%d/%m/%Y") as Data_Validade, tb_categoria.categoria from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

