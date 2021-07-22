/* Exercicio MySQL - CursosOnline | 21/07 | Juan Sapiezcinski*/
create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

-- criação tabela 'categoria'
create table tb_categoria(
id bigint auto_increment,
areacurso varchar(255),
plataforma varchar(50),
totalInstrutores int,
primary key (id)
);

insert into tb_categoria (areacurso, plataforma, totalInstrutores) values ("Programação", "CursoDaVidaWorkspace", 30);
insert into tb_categoria (areacurso, plataforma, totalInstrutores) values ("Ilustração", "CursoDaVidaWorkspace", 10);
insert into tb_categoria (areacurso, plataforma, totalInstrutores) values ("Roteiro", "Zoom ou Meet", 6);
insert into tb_categoria (areacurso, plataforma, totalInstrutores) values ("Jogos Digitais", "CursoDaVidaWorkspace", 13);
insert into tb_categoria (areacurso, plataforma, totalInstrutores) values ("SoftSkills", "Zoom", 15);

-- consulta tabela de atributos 'categoria'
select * from tb_categoria; 

create table tb_curso(
id bigint auto_increment,
nome varchar(255),
preco decimal(7,2),
linguagem varchar(255),
vagas int,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

-- povoando a tabela de atributos 'produto' com dados:
insert into tb_curso (nome, preco, linguagem, vagas, categoria_id) values ("Curso Java Avançado", 550.00, "Java", 200, 1);
insert into tb_curso (nome, preco, linguagem, vagas, categoria_id) values ("Curso Photoshop Intermediário", 480.00, "Adobe Photoshop", 160, 2);
insert into tb_curso (nome, preco, linguagem, vagas, categoria_id) values ("Curso Python Avançado", 500.00, "Python", 200, 1);
insert into tb_curso (nome, preco, linguagem, vagas, categoria_id) values ("Curso CSS + HTML + JavaScript", 1200.00, "CSS, HTML5, JS", 240, 1);
insert into tb_curso (nome, preco, linguagem, vagas, categoria_id) values ("Curso SCRUM", 150.00, "Metodologia Ágil", 200, 5);
insert into tb_curso (nome, preco, linguagem, vagas, categoria_id) values ("Curso Ureal Engine 4", 870.00, "Unreal Engine", 80, 4);
insert into tb_curso (nome, preco, linguagem, vagas, categoria_id) values ("Curso Criando Roteiro de Jogos", 600.00, "N/A", 90, 3);
insert into tb_curso (nome, preco, linguagem, vagas, categoria_id) values ("Curso Ilustrator", 550.00, "Adobe Ilustrator", 40, 2);


select * from tb_curso;

/*consulta curso com atributo preco maior que 600*/
select * from tb_curso where preco > 600;

/*consulta curso atributo preco entre 500 e 700*/
select * from tb_curso where preco between 500 and 700;

/*consulta no atributo nome da tabela curso por ocorrencias que contenham a letra J*/
select * from tb_curso where nome like "%J%";

/*inner join -- exibe tb_curso junto com tb_categoria */
select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id;

/* consulta dos cursos da categoria programação*/
select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id where tb_categoria.id = 1;