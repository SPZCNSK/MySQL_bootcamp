/*Exercicio 3 MySQL | 20/07 | Juan Sapiezcinski */
create database db_escola;

use db_escola;

/*definicao dos atributos da tabela*/
create table tb_estudantes (
id bigint auto_increment,
nome varchar(255),
idade int,
professor varchar(255),
disciplina varchar(255),
media int,
primary key (id)
);

-- atribuindo dados à tabela
insert into tb_estudantes (nome, idade, professor, disciplina, media)
values ("Pedro", 12, "Anaximandro", "Filosofia", 7);
insert into tb_estudantes (nome, idade, professor, disciplina, media)
values ("Chico", 12, "Homero", "Literatura", 9);
insert into tb_estudantes (nome, idade, professor, disciplina, media)
values ("Maria", 12, "Kant", "Matematica", 4);
insert into tb_estudantes (nome, idade, professor, disciplina, media)
values ("Ana", 12, "Hegel", "Historia", 5);
insert into tb_estudantes (nome, idade, professor, disciplina, media)
values ("Luisa", 12, "Milton Santos", "Geografia", 8);
insert into tb_estudantes (nome, idade, professor, disciplina, media)
values ("Dinho", 12, "Átila", "Biologia", 6);
insert into tb_estudantes (nome, idade, professor, disciplina, media)
values ("Bill", 12, "Marie Curie", "Química", 10);
insert into tb_estudantes (nome, idade, professor, disciplina, media)
values ("Flora", 12, "Kay Greene", "Ed. Física", 10);

/* exibindo a tabela de dados tb_estudantes */
select * from tb_estudantes;

/*exibindo medias maior ou igual a 7 e media menor que 7*/
select * from tb_estudantes where media >= 7;
select * from tb_estudantes where media < 7;

/*fazendo atualização do dado do atributo media no id 7*/
update tb_estudantes set media = 6 where id = 7;


