create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(

	id bigint auto_increment,
    categoria varchar(255),
    tamanho varchar(255),
    primary key(id)
);

create table tb_pizza(

	id bigint auto_increment,
    sabor varchar(255),
    borda varchar(255),
    preco decimal(10,2),
    categoria_id bigint,
    primary key (id),
    foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_categoria(categoria, tamanho) 
value ("Salgada", "Grande");
insert into tb_categoria(categoria, tamanho) 
value ("Salgada", "Brotinho");
insert into tb_categoria(categoria, tamanho) 
value ("Meio a Meio", "Grande");
insert into tb_categoria(categoria, tamanho) 
value ("Meio a Meio", "Brotinho");
insert into tb_categoria(categoria, tamanho) 
value ("Doce", "Grande");
insert into tb_categoria(categoria, tamanho) 
value ("Doce", "Brotinho");

select * from tb_categoria;


insert into tb_pizza(sabor, borda, preco, categoria_id) 
value ("Calabresa", "Recheada", 42.99, 1);
insert into tb_pizza(sabor, borda, preco, categoria_id) 
value ("Mussarela", "Fina", 21.49, 2);
insert into tb_pizza(sabor, borda, preco, categoria_id) 
value ("Meia Calabresa meia Mussarela", "Fina", 54.99, 4);
insert into tb_pizza(sabor, borda, preco, categoria_id) 
value ("Meia Calabresa meia Mussarela", "Recheada", 29.49, 5);
insert into tb_pizza(sabor, borda, preco, categoria_id) 
value ("Portuguesa", "Recheada", 79.99, 1);
insert into tb_pizza(sabor, borda, preco, categoria_id) 
value ("Chocolate", "Fina", 40.99, 5);
insert into tb_pizza(sabor, borda, preco, categoria_id) 
value ("Chocolate Branco", "Recheada", 43.98, 5);
insert into tb_pizza(sabor, borda, preco, categoria_id) 
value ("Chocolate com Morango", "Recheada", 21.99, 6);

select * from tb_pizza;

select * from tb_pizza where preco > 45;

select * from tb_pizza where preco between 3 and 60;

select * from tb_pizza where sabor like 'C%';

select * from tb_pizza inner join tb_categoria on tb_pizza.categoria_id = tb_categoria.id;

select * from tb_pizza as categoria_id inner join tb_categoria as categoria on categoria_id = categoria like 'Doce%';