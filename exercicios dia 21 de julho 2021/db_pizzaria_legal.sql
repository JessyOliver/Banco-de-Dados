/*CRIANDO O BANCO db_pizzaria_legal*/
CREATE DATABASE db_pizzaria_legal;

/*USANDO O BANCO*/
USE db_pizzaria_legal;

/*CRIANDO AS TABELA tb_categoria*/
CREATE TABLE tb_categoria(
/*ATRIBUTOS*/
id_categoria bigint auto_increment,
tipo_categoria varchar(255),
tamanho_categoria varchar(10),
promocao_categoria boolean,

/*CHAVE PRIMARIA*/
primary key (id_categoria)
);

/*Popule esta tabela Categoria com até 5 dados.*/
INSERT INTO tb_categoria(tipo_categoria, tamanho_categoria, promocao_categoria)
VALUES("Doce", "Grande", FALSE);
INSERT INTO tb_categoria(tipo_categoria, tamanho_categoria, promocao_categoria)
VALUES("Salgada", "Grande", TRUE);
INSERT INTO tb_categoria(tipo_categoria, tamanho_categoria, promocao_categoria)
VALUES("Vegetariana", "Pequena", FALSE);
INSERT INTO tb_categoria(tipo_categoria, tamanho_categoria, promocao_categoria)
VALUES("Doce", "Big Grande", FALSE);
INSERT INTO tb_categoria(tipo_categoria, tamanho_categoria, promocao_categoria)
VALUES("Salgada", "Pequena", TRUE);



/*CRIANDO AS TABELA tb_pizza*/
CREATE TABLE tb_pizza(
/*ATRIBUTOS*/
id_pizza bigint auto_increment,
sabor_pizza varchar(255),
ingredientes varchar(255),
borda boolean,
quantidade int,
preco decimal(8,2),
estrangeira_categoria bigint,

/*CHAVE PRIMARIA*/
primary key(id_pizza), 

/*CHAVE ESTRANGEIRA*/
foreign key (estrangeira_categoria) references tb_categoria(id_categoria)
);

/*Popule esta tabela Categoria com até 8 dados.*/
INSERT INTO tb_pizza(sabor_pizza, ingredientes, borda, quantidade, preco, estrangeira_categoria)
VALUES("Mussarela", "muçarela, tomate e orégano ", true, 2, 60.00, 2);
INSERT INTO tb_pizza(sabor_pizza, ingredientes, borda, quantidade, preco, estrangeira_categoria)
VALUES("Calabresa", "calabresa e cebola", true, 1, 30.00, 5);
INSERT INTO tb_pizza(sabor_pizza, ingredientes, borda, quantidade, preco, estrangeira_categoria)
VALUES("Brócolis", "brócolis, muçarela e orégano ", false, 4, 35.00, 3);
INSERT INTO tb_pizza(sabor_pizza, ingredientes, borda, quantidade, preco, estrangeira_categoria)
VALUES("Morango", "Morango e chocolate", true, 2, 69.00, 4);
INSERT INTO tb_pizza(sabor_pizza, ingredientes, borda, quantidade, preco, estrangeira_categoria)
VALUES("Romeu e Julieta", "queijo branco e goiabada ", false, 3, 120.00, 1);
INSERT INTO tb_pizza(sabor_pizza, ingredientes, borda, quantidade, preco, estrangeira_categoria)
VALUES("Frango Catupiry", "frango, milho e catupiry", false, 1, 45.00, 2);
INSERT INTO tb_pizza(sabor_pizza, ingredientes, borda, quantidade, preco, estrangeira_categoria)
VALUES("Marguerita", "muçarela, manjericão e tomate", true, 1, 55.00, 5);
INSERT INTO tb_pizza(sabor_pizza, ingredientes, borda, quantidade, preco, estrangeira_categoria)
VALUES("Calabresa", "calabresa e cebola", true, 2, 60.00, 2);

/*Faça um select que retorne os Produtos com o valor maior do que 45 reais.*/
select * from tb_pizza where preco >= 45.00;

/*Faça um select trazendo  os Produtos com valor entre 29 e 60 reais.*/
select * from tb_pizza where preco between 29 and 60;

/*Faça um select  utilizando LIKE buscando os Produtos com a letra C.*/
select * from tb_pizza where sabor_pizza like 'c%';

/*Faça um um select com Inner join entre  tabela categoria e pizza.*/
select tb_pizza.sabor_pizza, tb_pizza.borda, tb_categoria.tipo_categoria  as Categoria_Pizza
from  tb_pizza inner join tb_categoria on tb_categoria.id_categoria = tb_pizza.estrangeira_categoria;

/*Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são pizza doce).*/
select * from tb_pizza where borda in (true) ;




