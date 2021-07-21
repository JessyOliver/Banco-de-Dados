/*criando o banco de dados db_cidade_das_frutas*/
 create database db_cidade_das_frutas;
 
 /*usando o db_cidade_das_frutas*/
 use db_cidade_das_frutas;

/*criando a tabela tb_categoria*/
create table tb_categoria(
id_categoria bigint auto_increment,
tipo_categoria varchar(25),
descriacao_categoria varchar(255),
regiao_categoria varchar(25),
/*chave primaria*/
primary key(id_categoria)
);

/*Popule esta tabela Categoria com até 5 dados.*/
insert into tb_categoria(tipo_categoria, descriacao_categoria, regiao_categoria )
value ("Frutas Ácidas", "Devem ser conservadas em um local arejado.", "Sudeste ");
insert into tb_categoria(tipo_categoria, descriacao_categoria, regiao_categoria )
value ("Frutas semiácidas", "Devem ser conservadas em um local arejado.", "Oeste ");
insert into tb_categoria(tipo_categoria, descriacao_categoria, regiao_categoria )
value ("Frutas Ácidas", "Devem ser conservadas em um local arejado.", "Sudeste ");
insert into tb_categoria(tipo_categoria, descriacao_categoria, regiao_categoria )
value ("Frutas doces", "Devem ser conservadas em um local arejado.", "Norte ");
insert into tb_categoria(tipo_categoria, descriacao_categoria, regiao_categoria )
value ("Frutas semiácidas", "Devem ser conservadas em um local arejado.", "Sudeste ");

/*criando a tabela tb_produto */
create table tb_produto (
/*atributos*/
id_produto bigint auto_increment,
nome_produto varchar(255),
madura_produto boolean,
promocao_produto boolean,
quanti_produto int,
preco_produto decimal(8,2),
estrang_categoria bigint,

/*chave primaria*/
primary key (id_produto),

/*chave estrangeira*/
foreign key (estrang_categoria) references tb_categoria(id_categoria)
);

/*Popule esta tabela Produto com até 8 dados.*/
insert into tb_produto(nome_produto, madura_produto, promocao_produto, quanti_produto, preco_produto, estrang_categoria)
value ("Limão", true, true, 19, 99.99, 3 );
insert into tb_produto(nome_produto, madura_produto, promocao_produto, quanti_produto, preco_produto, estrang_categoria)
value ("Morango", true, true, 15, 69.99, 1 );
insert into tb_produto(nome_produto, madura_produto, promocao_produto, quanti_produto, preco_produto, estrang_categoria)
value ("Manga", true, true, 10, 33.99, 5 );
insert into tb_produto(nome_produto, madura_produto, promocao_produto, quanti_produto, preco_produto, estrang_categoria)
value ("Laranja", true, true, 25, 60.99, 3 );
insert into tb_produto(nome_produto, madura_produto, promocao_produto, quanti_produto, preco_produto, estrang_categoria)
value ("Maçã", true, true, 45, 256.99, 2 );
insert into tb_produto(nome_produto, madura_produto, promocao_produto, quanti_produto, preco_produto, estrang_categoria)
value ("Abacaxi", true, true, 20, 60.99, 1 );
insert into tb_produto(nome_produto, madura_produto, promocao_produto, quanti_produto, preco_produto, estrang_categoria)
value ("Mamão papaia", true, true, 20, 100.99, 4 );
insert into tb_produto(nome_produto, madura_produto, promocao_produto, quanti_produto, preco_produto, estrang_categoria)
value ("Melancia", true, true, 20, 500.99, 4 );

/*Faça um select que retorne os Produtos com o valor maior do que 50 reais.*/
select * from tb_produto where preco_produto >= 50.00;

/*Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.*/
select * from tb_produto where preco_produto between 3 and 60;

/*Faça um select  utilizando LIKE buscando os Produtos com a letra c.*/
select * from tb_produto where nome_produto like 'c%';

/*Faça um um select com Inner join entre  tabela categoria e produto.*/
select tb_produto.nome_produto, tb_produto.madura_produto, tb_categoria.tipo_categoria as Tipos_Frutas
from tb_produto inner join tb_categoria on tb_categoria.id_categoria = tb_produto.estrang_categoria;

/*Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são aves ou legumes).*/
select * from tb_produto where preco_produto between 55 and 100 order by  preco_produto;




















