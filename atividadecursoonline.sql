create database db_curso;
use db_curso;

create table tb_categoria(
id bigint auto_increment,
materia varchar(255) not null,
turma int not null,
certificacao boolean,
primary key(id)
);

insert into tb_categoria(materia,turma,certificacao) values ("HTML5",1,true);
insert into tb_categoria(materia,turma,certificacao) values ("CSS",2,true);
insert into tb_categoria(materia,turma,certificacao) values ("Java Script",3,true);
insert into tb_categoria(materia,turma,certificacao) values ("React",4,true);
insert into tb_categoria(materia,turma,certificacao) values ("Photoshop",5,true);

create table tb_curso(
id bigint auto_increment,
professor varchar(255) not null,
preco decimal(6,2) not null,
horas varchar(100) not null,
descricao varchar(1000) not null,
presenca int not null,
categoria_id bigint,
primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_curso(professor,preco,horas,descricao,presenca,categoria_id) values ("Raquel Luna Simone Ramos",89.50,"20 h","Aprenda a fazer artes bonitas e profissionais",100,5);
insert into tb_curso(professor,preco,horas,descricao,presenca,categoria_id) values ("Nina Adriana Aragão",289.50,"40 h","Aprenda a criar estrutura de sites",95,1);
insert into tb_curso(professor,preco,horas,descricao,presenca,categoria_id) values ("Joaquim Gael Araújo",289.50,"40 h","Aprenda a fazer design de site",89,2);
insert into tb_curso(professor,preco,horas,descricao,presenca,categoria_id) values ("Matheus Tiago Fábio Vieira",300.50,"40 h","Aprenda a fazer sites",100,3);
insert into tb_curso(professor,preco,horas,descricao,presenca,categoria_id) values ("Thales Vitor Francisco Brito",459.50,"40 h","O React é uma biblioteca da linguagem JavaScript e uma das formas mais modernas para a criação de aplicações web.",98,4);
insert into tb_curso(professor,preco,horas,descricao,presenca,categoria_id) values ("Bento Marcos Vinicius Manoel Cardoso",89.50,"20 h","Aprenda a fazer artes bonitas e profissionais",100,5);
insert into tb_curso(professor,preco,horas,descricao,presenca,categoria_id) values ("Oliver Iago das Neves",289.50,"40 h","Aprenda a criar estrutura de sites",95,1);
insert into tb_curso(professor,preco,horas,descricao,presenca,categoria_id) values ("Rebeca Marina Giovanna Drumond",289.50,"40 h","Aprenda a fazer design de site",89,2);

select * from tb_curso where preco > 50.00;

select * from tb_curso where preco between 3.00 and 60.00;

select * from tb_curso where professor like "%c";

select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id;

select tb_curso.id,tb_curso.professor,tb_curso.preco,tb_categoria.materia from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id;
