/* Exercicio MySQL - Quitanda | 21/07 | Juan Sapiezcinski*/
create database db_cidade_das_frutas;

use db_cidade_das_frutas;

-- criação tabela 'categoria'
create table tb_categoria(
id bigint auto_increment,
tipo varchar(255),
qtvenda varchar(255),
nqtde int,
primary key (id)
);

insert into tb_categoria (tipo, qtvenda, nqtde) values ("Legume", "unidade", 1);
insert into tb_categoria (tipo, qtvenda, nqtde) values ("Verdura", "unidade", 1);
insert into tb_categoria (tipo, qtvenda, nqtde) values ("Fruta", "dúzia", 12);
insert into tb_categoria (tipo, qtvenda, nqtde) values ("Tempero", "gramas", 100);
insert into tb_categoria (tipo, qtvenda, nqtde) values ("Grão", "kilo", 1);

-- consulta tabela de atributos 'categoria'
select * from tb_categoria; 

create table tb_produto(
id bigint auto_increment,
nome varchar(255),
preco decimal(5,2),
qtde int,
validadeDias int,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

-- povoando a tabela de atributos 'produto' com dados:
insert into tb_produto (nome, preco, qtde, validadeDias, categoria_id) values ("Repolho", 6.00, 20 , 30, 2);
insert into tb_produto (nome, preco, qtde, validadeDias, categoria_id) values ("Abobrinha", 3.00, 20 , 7, 1);
insert into tb_produto (nome, preco, qtde, validadeDias, categoria_id) values ("Laranja", 5.00, 20 , 14, 3);
insert into tb_produto (nome, preco, qtde, validadeDias, categoria_id) values ("Maçã", 7.00, 20 , 21, 3);
insert into tb_produto (nome, preco, qtde, validadeDias, categoria_id) values ("Cominho", 6.00, 20 , 365, 4);
insert into tb_produto (nome, preco, qtde, validadeDias, categoria_id) values ("Chimichurry", 7.00, 20 , 365, 4);
insert into tb_produto (nome, preco, qtde, validadeDias, categoria_id) values ("Feijão", 12.00, 20 , 365, 5);
insert into tb_produto (nome, preco, qtde, validadeDias, categoria_id) values ("Berinjela", 8.00, 20 , 365, 1);

select * from tb_produto;

/*consulta produto com atributo preco maior que 10*/
select * from tb_produto where preco > 10;

/*consulta produto atributo preco entre 3 e 10*/
select * from tb_produto where preco between 3 and 10;

/*consulta no atributo nome da tabela produto por ocorrencias que contenham a letra C*/
select * from tb_produto where nome like "%C%";

/*inner join -- exibe tb_produto junto com tb_categoria */
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

/* consulta dos produtos da categoria legume*/
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.id = 1;