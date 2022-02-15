create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categoria(

	id bigint auto_increment,
    descricao varchar(255),
	primary key(id)    
);

create table tb_produto(

	id bigint auto_increment,
    descricao varchar(255),
    preco decimal(10,2),
    categoria_id bigint,
    primary key(id),
    foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_categoria(descricao) 
value ("Bovinas");
insert into tb_categoria(descricao) 
value ("Peixes e Frutos do Mar");
insert into tb_categoria(descricao) 
value ("Suínas");
insert into tb_categoria(descricao) 
value ("Aves");
insert into tb_categoria(descricao) 
value ("Especiarias");

insert into tb_produto(descricao, preco, categoria_id) 
value ("Contra filé pedaço 2kg", 37.90, 1);
insert into tb_produto(descricao, preco, categoria_id) 
value ("Salmão", 79.90, 2);
insert into tb_produto(descricao, preco, categoria_id) 
value ("Costela Bolvina", 65.99, 1);
insert into tb_produto(descricao, preco, categoria_id) 
value ("Costela Suína", 26.00, 3);
insert into tb_produto(descricao, preco, categoria_id) 
value ("Caviar", 299.99, 5);
insert into tb_produto(descricao, preco, categoria_id) 
value ("Cogumelos", 109.90, 5);
insert into tb_produto(descricao, preco, categoria_id) 
value ("Asa de frango 1kg", 15.60, 4);
insert into tb_produto(descricao, preco, categoria_id) 
value ("Coração de Frango", 32.99, 4);

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where descricao like 'C%';

select * from tb_produto inner join tb_categoria on tb_produto.categoria_id= tb_categoria.id;

select * from tb_produto as categoria_id inner join tb_categoria on categoria_id= tb_categoria.descricao like 'Bo%';