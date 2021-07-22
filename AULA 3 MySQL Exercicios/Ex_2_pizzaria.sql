/* Exercicio MySQL - Pizzaria | 21/07 | Juan Sapiezcinski*/
create database db_pizzaria_legal;

use db_pizzaria_legal;

/*criando a tabela categoria*/
create table tb_categoria(
id bigint auto_increment,
tipo varchar(255) not null,
massa varchar(255),
tamanho varchar(255),
primary key (id)
);
/* populando a tabela categoria */
insert into tb_categoria (tipo, massa, tamanho) values ("Salgada", "Trigo", "Grande");
insert into tb_categoria (tipo, massa, tamanho) values ("Salgada", "Integral", "Grande");
insert into tb_categoria (tipo, massa, tamanho) values ("Vegana", "Integral", "Padrão");
insert into tb_categoria (tipo, massa, tamanho) values ("Doce", "Trigo", "Padrão");
insert into tb_categoria (tipo, massa, tamanho) values ("Pizza", "Trigo", "Brotinho");


select * from tb_categoria;

/*criando tabela de atributos pizza*/
create table tb_pizza(
id bigint auto_increment,
nome varchar(255),
ingrediente varchar(255),
valor decimal(4,2),
bordaRecheada varchar(255),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

/*populando a tabela com 8 dados de pizzas*/
insert into tb_pizza (nome, ingrediente, valor, bordaRecheada, categoria_id)
values ("Calabreza", "Calabreza e cebola", 27.00, "Borda Catupiry", 1);
insert into tb_pizza (nome, ingrediente, valor, bordaRecheada, categoria_id)
values ("Franguito", "Frango com catupiry", 29.00 , "S/ Borda Recheada", 1);
insert into tb_pizza (nome, ingrediente, valor, bordaRecheada, categoria_id)
values ("Queijo", "Muçarela, tomate e orégano", 27.00 , "S/ Borda Recheada", 1);
insert into tb_pizza (nome, ingrediente, valor, bordaRecheada, categoria_id)
values ("Camaronis", "Camarão, cebola e catupiry", 65.00 , "Borda Cheddar", 2);
insert into tb_pizza (nome, ingrediente, valor, bordaRecheada, categoria_id)
values ("Palmito", "Palmito e muçarela", 32.00 , "Borda Catupiry", 5);
insert into tb_pizza (nome, ingrediente, valor, bordaRecheada, categoria_id)
values ("Brigadeiro", "Calabreza e cebola", 35.00 , "S/ Borda Recheada", 4);
insert into tb_pizza (nome, ingrediente, valor, bordaRecheada, categoria_id)
values ("Romeu e Julieta", "Queijo com goiabada", 32.00 , "S/ Borda Recheada", 4);
insert into tb_pizza (nome, ingrediente, valor, bordaRecheada, categoria_id)
values ("Veganita", "Brócolis, Tofupiry e alho poró", 50.00 , "Borda Tofupiry", 3);


select * from tb_pizza;

/*consulta pizza com atributo valor maior que 45*/
select * from tb_pizza where valor > 45;

/*consulta pizza atributo valor entre 29 e 60*/
select * from tb_pizza where valor between 29 and 60;

/*consulta no atributo nome da tabela pizza por ocorrencias que iniciem com a letra C*/
select * from tb_pizza where nome like "C%";

/*inner join */
select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;

/* consulta das ocorrencias da categoria pizza doce*/
select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where tb_categoria.id = 4;