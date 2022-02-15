create database db_farmacia_do_bem;

use db_farmacia_do_bem;

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
value ("Cosméticos");
insert into tb_categoria(descricao) 
value ("Original");
insert into tb_categoria(descricao) 
value ("Genérico");
insert into tb_categoria(descricao) 
value ("Vitaminas");
insert into tb_categoria(descricao) 
value ("Suplementos alimentares");

select * from tb_categoria;

insert into tb_produto(descricao, preco, categoria_id) 
value ("Rivotril", 21.99, 2);
insert into tb_produto(descricao, preco, categoria_id) 
value ("Esmalte", 7.99, 1);
insert into tb_produto(descricao, preco, categoria_id) 
value ("Multivitamínico", 80.10, 4);
insert into tb_produto(descricao, preco, categoria_id) 
value ("Rosuvastatina", 48.00, 3);
insert into tb_produto(descricao, preco, categoria_id) 
value ("Suplemento Alimentar", 123.99, 5	);
insert into tb_produto(descricao, preco, categoria_id) 
value ("Desodorante", 13.85, 1);
insert into tb_produto(descricao, preco, categoria_id) 
value ("Sabonete Líquidol", 26.90, 1);
insert into tb_produto(descricao, preco, categoria_id) 
value ("Removedor De Esmalte", 3.55, 1);

select * from tb_produto;

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where descricao like 'L%';

select * from tb_produto inner join tb_categoria on tb_produto.categoria_id = tb_categoria.id;

select * from tb_produto as categoria_id inner join tb_categoria on categoria_id = tb_categoria.descricao like 'Cosméticos%';