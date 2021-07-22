/* Exercicio MySQL - LojaConstrucao | 21/07 | Juan Sapiezcinski*/
create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

-- criação tabela 'categoria'
create table tb_categoria(
id bigint auto_increment,
tipo varchar(255),
dispIntnet varchar(50),
dispLoja varchar(50),
primary key (id)
);

insert into tb_categoria (tipo, dispIntnet, dispLoja) values ("Ferramenta", "Loja Virtual", "Loja Física");
insert into tb_categoria (tipo, dispIntnet, dispLoja) values ("Material", "Loja Virtual", "Loja Física");
insert into tb_categoria (tipo, dispIntnet, dispLoja) values ("Decoração", "Loja Virtual", "Loja Física");
insert into tb_categoria (tipo, dispIntnet, dispLoja) values ("Hidraulico", "Loja Virtual", "Loja Física");
insert into tb_categoria (tipo, dispIntnet, dispLoja) values ("Elétrico", "Loja Virtual", "Loja Física");

-- consulta tabela de atributos 'categoria'
select * from tb_categoria; 

create table tb_produto(
id bigint auto_increment,
nome varchar(255),
preco decimal(7,2),
marca varchar(255),
estoque int,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

alter table tb_produto change marca marca varchar(255);

-- povoando a tabela de atributos 'produto' com dados:
insert into tb_produto (nome, preco, marca, estoque, categoria_id) values ("Serra Mármore", 549.90, "Bosch", 400, 1);
insert into tb_produto (nome, preco, marca, estoque, categoria_id) values ("Conduite 50mt", 60.00, "Wago", 2000, 5);
insert into tb_produto (nome, preco, marca, estoque, categoria_id) values ("Piso Cerâmico mt²", 85.00, "fancyeramic", 500, 2); 
insert into tb_produto (nome, preco, marca, estoque, categoria_id) values ("Torneira Lavatorio", 239.99, "Deka", 300, 4);
insert into tb_produto (nome, preco, marca, estoque, categoria_id) values ("Saco Cimento 20kg", 50.00 ,"VOTORANTIN", 5000, 2);
insert into tb_produto (nome, preco, marca, estoque, categoria_id) values ("Chave Registro 3/4", 43.90, "Hydra", 280, 4);
insert into tb_produto (nome, preco, marca, estoque, categoria_id) values ("Furadeira Parafusadeira", 519.80, "Makitta", 200, 1);
insert into tb_produto (nome, preco, marca, estoque, categoria_id) values ("Mesa Escritório", 500.00, "Kappesberg", 150, 3);

select * from tb_produto;

/*consulta produto com atributo preco maior que 100*/
select * from tb_produto where preco > 100;

/*consulta produto atributo preco entre 50 e 100*/
select * from tb_produto where preco between 50 and 100;

/*consulta no atributo nome da tabela produto por ocorrencias que contenham a letra C*/
select * from tb_produto where nome like "%C%";

/*inner join -- exibe tb_produto junto com tb_categoria */
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

/* consulta dos produtos da categoria hidraulico*/
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.id = 4;