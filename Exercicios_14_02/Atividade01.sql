-- Atividade 1 Crie um banco de dados para um serviço de um game Online , 
-- o nome do banco deverá ter o seguinte nome db_generation_game_online, onde, 
-- o sistema trabalhará com as informações dos personagens desse game. O sistema trabalhará com 2 tabelas tb_personagem 
-- e tb_classe. siga exatamente esse passo a passo: Crie uma tabela tb_classe utilizando a habilidade de abstração 
-- e determine 3 atributos relevantes da classe para se trabalhar com o serviço desse game Online. 
-- Crie uma tabela tb_personagem e utilizando a habilidade de abstração e determine 5 atributos relevantes dos funcionários 
-- para se trabalhar com o serviço desse game Online (não esqueça de criar a foreign key de tb_classe nesta tabela) . 
-- Popule esta tabela classe com até 5 dados. Popule esta tabela personagem com até 8 dados. 
-- Faça um select que retorne os personagens com o poder de ataque maior do que 2000. 
-- Faça um select trazendo os personagens com poder de defesa entre 1000 e 2000. 
-- Faça um select utilizando LIKE buscando os personagens com a letra C. 
-- Faça um um select com Inner join entre tabela classe e personagem. 
-- Faça um select onde traga todos os personagem de uma classe específica (exemplo todos os personagens que são arqueiros). 
-- salve as querys para cada uma dos requisitos do exercício em um arquivo 
-- .SQL ou texto e coloque no seu GitHuB pessoal e compartilhe esta atividade.


create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
classe varchar(255) not null,
primary key(id)
);

insert into tb_classe(classe)
value ("Assault");
insert into tb_classe(classe)
value ("Medic");
insert into tb_classe(classe)
value ("Sniper");
insert into tb_classe(classe)
value ("Suport");
insert into tb_classe(classe)
value ("Assasin");

create table tb_personagem(
id bigint auto_increment,
nome varchar(255) not null,
pais varchar(255) not null,
ataque int,
defesa int,
classe_id bigint,
primary key(id),
foreign key (classe_id)references tb_classe(id)
);

insert into tb_personagem (nome, pais, ataque, defesa, classe_id) 
values ("Carlos","Brasil",5000,2500,1);
insert into tb_personagem (nome, pais, ataque, defesa, classe_id) 
values ("HunLin","China",9000,1500,3);
insert into tb_personagem (nome, pais, ataque, defesa, classe_id) 
values ("Christopher","EUA",2500,4000,2);
insert into tb_personagem (nome, pais, ataque, defesa, classe_id) 
values ("Rodrigo","Brasil",3500,5500,4);
insert into tb_personagem (nome, pais, ataque, defesa, classe_id) 
values ("Russel","EUA",9000,1500,3);
insert into tb_personagem (nome, pais, ataque, defesa, classe_id) 
values ("Rhuan","Chile",8000,2500,5);

select * from tb_personagem where ataque > 3000;

select * from tb_personagem where defesa between 2000 and 4000;

select * from tb_personagem where pais Like "C%";

select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;
 
select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id where tb_classe.id = 3 order by nome;