create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria(
	id bigint auto_increment,
    tipo_produto varchar(255) not null,
    ativo boolean not null,
    desconto boolean not null,
    
    primary key(id)
);

create table tb_produto(
	id bigint auto_increment,
    nome varchar(255) not null,
    preco decimal(6,2) not null,
    marca varchar(255) not null,
    descricao varchar(255) not null,
    quantidade varchar(100) not null,
    categoria_id bigint,
    
    primary key(id),
    foreign key(categoria_id) references tb_categoria(id)    
);

insert into tb_categoria(tipo_produto,ativo,desconto) values ("Medicamentos",true,false);
insert into tb_categoria(tipo_produto,ativo,desconto) values ("Genéricos",true,false);
insert into tb_categoria(tipo_produto,ativo,desconto) values ("Beleza e Higiene",true,true);

insert into tb_produto(nome,preco,marca,descricao,quantidade,categoria_id) values ("Forxiga 30 Comprimidos Revestidos",129.19,"AstraZeneca","Forxiga é indicado junto à dieta e à prática de exercícios para
																																					melhorar o controle glicêmico (controle dos níveis de açúcar no sangue) em pacientes com diabetes mellitus tipo 2", "10 mg",1);
insert into tb_produto(nome,preco,marca,descricao,quantidade,categoria_id) values ("Qlaira Bayer",44.49,"Bayer","Qlaira Bayer 28 Comprimidos contém uma pequena quantidade de hormônios femininos, sendo 
																																					que alguns comprimidos contêm somente valerato de estradiol e outros contêm valerato de estradiol combinado com dienogeste.", "28 comprimidos",1);
insert into tb_produto(nome,preco,marca,descricao,quantidade,categoria_id) values ("Cloridrato de Propranolol",2.13,"Medley","30 comprimidos para quem tem problemas no coração", "40 mg",2);		
insert into tb_produto(nome,preco,marca,descricao,quantidade,categoria_id) values ("Nimesulida",9.79,"Cimed Remédios","O medicamente age combatendo a inflamação, dor e febre.", "100 mg",2);		
insert into tb_produto(nome,preco,marca,descricao,quantidade,categoria_id) values ("Atenolol",3.06,"Medley", "O atenolol age preferencialmente sobre os receptores localizados no coração e na circulação,
																																					reduzindo a pressão arterial, quando usado continuamente.","25 mg", 2);
insert into tb_produto(nome,preco,marca,descricao,quantidade,categoria_id) values ("Kit Sabonete Líquido",32.66,"Darrow","Kit Sabonete Líquido Darrow Actine 140ml + 60ml", "140ml + 60ml",3);					
insert into tb_produto(nome,preco,marca,descricao,quantidade,categoria_id) values ("Máscara Capilar",118.70,"Vichy","É indicada para cabelos danificados por químicas ou agressões térmicas (secador e chapinha). ", "200 ml",3);				
insert into tb_produto(nome,preco,marca,descricao,quantidade,categoria_id) values ("Gel De Limpeza Rosto Neutrogena Purified Skin",26.90,"Neutrogena","Oferece uma limpeza purificante e profunda que elimina as impurezas e toxinas e reduz a oleosidade da pele sem deixar a sensação de ressecamento.", "150 g",3);																																	

-- select que retorne os Produtos com o valor maior do que 50 reais.
select id,nome, CONCAT('R$ ',FORMAT(preco, 2,'pt_BR')) as preco from tb_produto where preco > 50.00;

-- select trazendo os Produtos com valor entre 3 e 60 reais.
select id,nome, CONCAT('R$ ',FORMAT(preco, 2,'pt_BR')) as preco from tb_produto where preco between 3.00 and 60.00;

-- select utilizando LIKE buscando os Produtos com a letra B.
select id,nome from tb_produto where nome like "%b%";

-- select com Inner join entre tabela categoria e produto.
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

-- select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são cosméticos).
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where categoria_id = 3;







