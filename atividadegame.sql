create database db_games;
use db_games;

create table tb_classe(
	id bigint auto_increment,
    nome varchar(255),
    arma varchar(150),
    alcance varchar(255),
    
    primary key(id)
);
    
create table tb_personagem(
	id bigint auto_increment,
	nome varchar(300) not null,
    nivel int,
    ataque int,
    defesa int,
    dificuldade varchar(255),
    classe_id bigint,
    
    primary key(id),
    foreign key(classe_id) references tb_classe(id)
);

insert into tb_classe (nome,arma,alcance) values ("Atirador","Revolver", "Distância Média");
insert into tb_classe (nome,arma,alcance) values ("Arqueiro","Arco e Flecha", "A distância");
insert into tb_classe (nome,arma,alcance) values ("Tanque","Machado", "Corpo a Corpo");
insert into tb_classe (nome,arma,alcance) values ("Mago","Magia", "Distância Média");
insert into tb_classe (nome,arma,alcance) values ("Curandeiro","Poção", "Distância Média");

insert into tb_personagem(nome,nivel,ataque,defesa,dificuldade,classe_id) values ("Tristana",1000,2000,900,"Moderado",2);
insert into tb_personagem(nome,nivel,ataque,defesa,dificuldade,classe_id) values ("Jhin",450,1100,500,"Moderado",4);
insert into tb_personagem(nome,nivel,ataque,defesa,dificuldade,classe_id) values ("Orianna",5000,8000,15000,"Baixo",5);
insert into tb_personagem(nome,nivel,ataque,defesa,dificuldade,classe_id) values ("Ekko",10000,20000,100,"Baixo",5);
insert into tb_personagem(nome,nivel,ataque,defesa,dificuldade,classe_id) values ("Vayne",10000,3500,2000,"Alto",2);
insert into tb_personagem(nome,nivel,ataque,defesa,dificuldade,classe_id) values ("Corki",50,750,100,"Alto",3);
insert into tb_personagem(nome,nivel,ataque,defesa,dificuldade,classe_id) values ("Merlim",20000,500,5000,"Moderado",4);

select * from tb_classe;
select * from tb_personagem;

select * from tb_personagem where ataque > 2000;

select * from tb_personagem where defesa between 1000 and 2000;

select * from tb_personagem where nome like "%c%";

select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id 
where tb_classe.id = 2;
