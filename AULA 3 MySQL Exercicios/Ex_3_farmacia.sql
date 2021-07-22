/* Exercicio MySQL - Farmácia | 21/07 | Juan Sapiezcinski*/
create database db_farmacia_do_bem;

use db_farmacia_do_bem;

-- criação tabela 'categoria'
create table tb_categoria(
id bigint auto_increment,
tipo varchar(255),
receita boolean not null,
desclab boolean not null,
primary key (id)
);

insert into tb_categoria (tipo, receita, desclab) values ("Suplemento", false, false);
insert into tb_categoria (tipo, receita, desclab) values ("Medicamento", false, true);
insert into tb_categoria (tipo, receita, desclab) values ("Cosmético", false, false);
insert into tb_categoria (tipo, receita, desclab) values ("Medicamento Controlado", true, true);
insert into tb_categoria (tipo, receita, desclab) values ("Outros", false, false);

-- consulta tabela de atributos 'categoria'
select * from tb_categoria; 

create table tb_produto(
id bigint auto_increment,
nome varchar(255),
preco decimal(5,2),
marca varchar(255),
qtEstoque bigint,
datacriacao timestamp not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

-- povoando a tabela de atributos 'produto' com dados:
insert into tb_produto (nome, preco, marca, qtEstoque, datacriacao, categoria_id)
values ("Rexona roll-on", 9.70, "REXONA", 60, current_timestamp(), 3);
insert into tb_produto (nome, preco, marca, qtEstoque, datacriacao, categoria_id)
values ("Creapure", 32.00, "GROWTH", 100, current_timestamp(), 1);
insert into tb_produto (nome, preco, marca, qtEstoque, datacriacao, categoria_id)
values ("Dorflex", 4.99, "DorflexCompany", 1000, current_timestamp(), 2);
insert into tb_produto (nome, preco, marca, qtEstoque, datacriacao, categoria_id)
values ("Dipirona", 6.49, "Genérico", 1250, current_timestamp(), 2);
insert into tb_produto (nome, preco, marca, qtEstoque, datacriacao, categoria_id)
values ("Rivotril", 25.90, "Medley", 150, current_timestamp(), 4);
insert into tb_produto (nome, preco, marca, qtEstoque, datacriacao, categoria_id)
values ("Gel para Massagem", 5.00, "FisioFort", 80, current_timestamp(), 5);
insert into tb_produto (nome, preco, marca, qtEstoque, datacriacao, categoria_id)
values ("Shampoo Clear", 17.99, "Clear", 50, current_timestamp(), 3);
insert into tb_produto (nome, preco, marca, qtEstoque, datacriacao, categoria_id)
values ("Preservativo", 9.70, "Skyn", 400, current_timestamp(), 5);

insert into tb_produto(nome, preco, marca, qtEstoque, datacriacao) values ("WheyProtein", 68.90, "Probiotica", 90, current_timestamp());

select * from tb_produto;

/*consulta produto com atributo preco maior que 50*/
select * from tb_produto where preco > 50;

/*consulta produto atributo preco entre 3 e 60*/
select * from tb_produto where preco between 3 and 60;

/*consulta no atributo nome da tabela produto por ocorrencias que iniciem com a letra R*/
select * from tb_produto where nome like "%R%";

/*inner join -- exibe tb_produto junto com tb_categoria */
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

/* consulta dos produtos da categoria cosmético*/
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.id = 3;