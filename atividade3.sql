CREATE DATABASE db_registro_escolar;
USE db_registro_escolar;

-- criando a tabela do estudante
CREATE TABLE tb_estudante(
	id_estudante bigint auto_increment,
    nome_alune varchar(255) not null,
    matricula varchar(50) not null,
    periodo int not null,
    disciplina varchar(255) not null,
    nota decimal(8,5) not null,
    
    primary key(id_estudante)
    );
    
    -- inserindo os dados do estudante
    insert into tb_estudante(nome_alune,matricula,periodo,disciplina,nota) values ("Miguel Guilherme Mendes","297612013",1,"Física",8.5);
	insert into tb_estudante(nome_alune,matricula,periodo,disciplina,nota) values ("Luís Gustavo Moura","438537129",3,"Biologia",3.5);
    insert into tb_estudante(nome_alune,matricula,periodo,disciplina,nota) values ("Eloá Heloisa Rocha","264525218",3,"História",7.75);
	insert into tb_estudante(nome_alune,matricula,periodo,disciplina,nota) values ("Camila Marli Isabel Pires","259246232",2,"Matemática",10.0);
    insert into tb_estudante(nome_alune,matricula,periodo,disciplina,nota) values ("Lúcia Liz Melissa Figueiredo","473870149",1,"Artes",6.8);
    insert into tb_estudante(nome_alune,matricula,periodo,disciplina,nota) values ("Gabriel Noah Sérgio Barros","416442286",3,"Geografia",8.75);
	insert into tb_estudante(nome_alune,matricula,periodo,disciplina,nota) values ("Luciana Gabrielly Almada","509868071",2,"Física",9.5);
    insert into tb_estudante(nome_alune,matricula,periodo,disciplina,nota) values ("Kaique Lucas da Rocha","425617348",1,"Ed. Física",10.0);
    
    -- alterando nota decimal(8,5) not null para nota decimal(8,2) not null
    alter table tb_estudante modify nota decimal(8,2) not null;
    
    -- apresentando os alunos que tem notas maiores que 7
    select nome_alune,nota from tb_estudante where nota >7.00;
    
	-- apresentando os alunos que tem notas menores que 7
    select nome_alune,nota from tb_estudante where nota <7.00;
    
    -- atualizando os dados de um estudante
    update tb_estudante set periodo = 2 where id_estudante = 7;
    
    
    
    
    
    