/*Exercicio 1 MySQL | 20/07 | Juan Sapiezcinski */
create database db_rhempresa;

use db_rhempresa;

create table tb_funcionarios (
id bigint auto_increment,
nome varchar(255),
salario decimal(8,2),
idade int,
anosDeEmpresa int,
cargo varchar(255),
primary key (id)
);

/*insersao de dados na tabela*/
insert into tb_funcionarios (nome, salario, idade, anosDeEmpresa, cargo) 
values ("Francisco", 2195.50, 30, 3, "Auxiliar administrativo");
insert into tb_funcionarios (nome, salario, idade, anosDeEmpresa, cargo) 
values ("Maria", 3705.20, 26, 5, "Programadora Front-End");
insert into tb_funcionarios (nome, salario, idade, anosDeEmpresa, cargo) 
values ("Dexter", 2602.36, 23, 4, "Auxiliar administrativo");
insert into tb_funcionarios (nome, salario, idade, anosDeEmpresa, cargo) 
values ("Sofia", 1500.00, 17, 1, "Estagiária");
insert into tb_funcionarios (nome, salario, idade, anosDeEmpresa, cargo) 
values ("Bartolomeu", 14002.09, 45, 7, "Tech Lead");

/*exibe a tabela completa*/
select * from tb_funcionarios;

/*excluindo elemento do id = 1*/
delete from tb_funcionarios where id = 1;

/*atualizando os dados dos atributos: cargo, salario, idade e anosDeEmpresa do id 5*/
update tb_funcionarios set cargo = "Desenvolvedora Junior" , salario = 2000.00, idade = 18, anosDeEmpresa = 2 where id = 5;

/*acrescentando uma nova linha de dados na tabela*/
insert into tb_funcionarios (nome, salario, idade, anosDeEmpresa, cargo)
values ("Tayná", 1500.00, 17, 0, "Estagiario") ;

/*exibe as linhas em que o atributo salario recebe dados maiores que 2k e menores que 2k*/
select * from tb_funcionarios where salario > 2000.00;
select * from tb_funcionarios where salario < 2000.00;