create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

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
    primary key (id),
    foreign key(categoria_id) references tb_categoria(id)
    );

insert into tb_categoria (descricao) 
value ("Impermeabilizante");
insert into tb_categoria (descricao)
value ("Material de Construção");
insert into tb_categoria (descricao) 
value ("Tintas");
insert into tb_categoria (descricao) 
value ("Ferramentas");
insert into tb_categoria (descricao) 
value ("Banheiro");


insert into tb_produto (descricao, preco, categoria_id) 
value ("Tinta Branca", 235.00, 3);
insert into tb_produto (descricao, preco, categoria_id) 
value ("Tinta Amarelo", 299.90, 2);
insert into tb_produto (descricao, preco, categoria_id) 
value ("Impermeabilizante", 99.90, 1);
insert into tb_produto (descricao, preco, categoria_id) 
value ("Martelo", 60, 4);
insert into tb_produto (descricao, preco, categoria_id) 
value ("Ducha Higiênica Acqua Jet Gyro 2195 Cromada Tigre", 176.62, 5);
insert into tb_produto (descricao, preco, categoria_id) 
value ("Chuveiro de Parede Max 1977C.CT Deca", 218.14, 5);
insert into tb_produto (descricao, preco, categoria_id) 
value ("Cimento 50KG - Nacional", 29.11, 2);
insert into tb_produto (descricao, preco, categoria_id) 
value ("Cerâmica", 1.66, 2);

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where descricao like 'C%';

select * from tb_produto inner join tb_categoria on tb_produto.categoria_id = tb_categoria.id;

select * from tb_produto as categoria_id inner join tb_categoria on categoria_id = tb_categoria.descricao like 'Banheiro%';