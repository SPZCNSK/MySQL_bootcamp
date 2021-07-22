/*Exercicio 2 MySQL | 20/07 | Juan Sapiezcinski */
create database db_ecom;

use db_ecom;

/*criando a tabela com os atributos*/
create table tb_produtos (
id bigint auto_increment,
tipo varchar(255),
preco decimal(8,2),
tamanho varchar(255),
marca varchar(255),
qtde bigint,
primary key (id)
);

/*insersao de dados na tabela*/
insert into tb_produtos (tipo, preco, tamanho, marca, qtde) 
values ("Camiseta", 39.90, "G", "Avast", 30);
insert into tb_produtos (tipo, preco, tamanho, marca, qtde) 
values ("Tênis", 259.99, "39 a 42", "CCleaner", 45);
insert into tb_produtos (tipo, preco, tamanho, marca, qtde) 
values ("Calça", 70.00, "41", "Mozilla", 50);
insert into tb_produtos (tipo, preco, tamanho, marca, qtde) 
values ("Blusa", 120.50, "G", "CPUZ", 40);
insert into tb_produtos (tipo, preco, tamanho, marca, qtde) 
values ("Vestido", 83.60, "M", "Steam", 20);
insert into tb_produtos (tipo, preco, tamanho, marca, qtde) 
values ("Óculos", 700.00, "Unico", "Nvidia", 10);
insert into tb_produtos (tipo, preco, tamanho, marca, qtde) 
values ("Relógio", 1395.90, "Grande", "Chrome", 10);
insert into tb_produtos (tipo, preco, tamanho, marca, qtde) 
values ("Colar", 380.00, "Unico", "Edge", 5);

/*exibe a tabela inteira*/
select * from tb_produtos;

/*atualização dos dados do atributo marca no id 8*/
update tb_produtos set marca = "Kaspersky" where id = 8;

/*exibindo os valores maiores ou iguais a 500 e os menores que 500*/
select * from tb_produtos where preco >= 500.00;
select * from tb_produtos where preco < 500.00;