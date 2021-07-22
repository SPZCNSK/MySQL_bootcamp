/* Exercicio MySQL - gameOnline | 21/07 | Juan Sapiezcinski*/
create database db_generation_game_online;

use db_generation_game_online;

/*criando a tabela classe*/
create table tb_classe(
id bigint auto_increment,
classe varchar(255) not null,
movimentacao varchar(255),
primary key (id)
);
/* populando a tabela classe */
insert into tb_classe (classe, movimentacao) values ("Tanque", "Lento");
insert into tb_classe (classe, movimentacao) values ("Mago", "Médio");
insert into tb_classe (classe, movimentacao) values ("Assassino", "Ágil");
insert into tb_classe (classe, movimentacao) values ("Guerreiro", "Médio");
insert into tb_classe (classe, movimentacao) values ("Suporte", "Ágil");

select * from tb_classe;

/*criando tabela de atributos personagens*/
create table tb_personagem(
id bigint auto_increment,
nome varchar(255),
atackpower bigint,
defensepower bigint,
weapon varchar(255),
qtdeSkin bigint,
classe_id bigint,
primary key (id),
foreign key (classe_id) references tb_classe (id)
);
/*populando a tabela com 8 dados de personagens*/
insert into tb_personagem (nome, atackpower, defensepower, weapon, qtdeSkin, classe_id)
values ("Agrabbar", 1500, 500, "Adaguinha", 8, 3);
insert into tb_personagem (nome, atackpower, defensepower, weapon, qtdeSkin, classe_id)
values ("Khor", 600, 1800, "Martelo", 7, 1);
insert into tb_personagem (nome, atackpower, defensepower, weapon, qtdeSkin, classe_id)
values ("Smiglie", 1000, 700, "Veneno", 9, 3);
insert into tb_personagem (nome, atackpower, defensepower, weapon, qtdeSkin, classe_id)
values ("Khabby", 800, 800, "Varinha", 5, 2);
insert into tb_personagem (nome, atackpower, defensepower, weapon, qtdeSkin, classe_id)
values ("Huryle", 2100, 400, "Espada", 10, 4);
insert into tb_personagem (nome, atackpower, defensepower, weapon, qtdeSkin, classe_id)
values ("Lifesavior", 500, 2100, "Pistola", 8, 5);
insert into tb_personagem (nome, atackpower, defensepower, weapon, qtdeSkin, classe_id)
values ("Charity", 600, 2000, "Escopeta", 13, 5);
insert into tb_personagem (nome, atackpower, defensepower, weapon, qtdeSkin, classe_id)
values ("Magwier", 900, 700, "Cajado", 3, 2);

select * from tb_personagem;
/*consulta personagem com atributo atackpower maior que 2k*/
select * from tb_personagem where atackpower > 2000;

/*consulta personagem atributo defensepower entre 1k e 2k*/
select * from tb_personagem where defensepower between 1000 and 2000;

/*consulta no atributo nome da tabela personagem por ocorrencias que iniciem com a letra C*/
select * from tb_personagem where nome like "C%";

/*inner join */
select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

/* consulta dos personagens da classe mago
tb_classe.id = tb_personagem.classe_id --> a classe estrangeira tem que ser igual a classe primária
select * from tb_personagem inner join tb_classe --> busca os dados relacionados*/
select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id where tb_classe.id = 2;






