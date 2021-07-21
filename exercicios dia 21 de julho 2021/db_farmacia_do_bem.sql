/*criando o banco de dados db_farmacia_do_bem*/
create database db_farmacia_do_bem;

/*usando o db db_farmacia_do_bem*/
use db_farmacia_do_bem;

/*criando as tabela tb_categoria*/
create table tb_categoria(
/*atributos*/
id_categoria bigint auto_increment,
receita_categoria boolean,
uso_categoria varchar(25),
consulmo_categoria varchar(25),

/*chave primaria*/
primary key (id_categoria)
);

/*Popule esta tabela Categoria com até 5 dados.*/
insert into tb_categoria(receita_categoria, uso_categoria, consulmo_categoria)
values(true, "Adulto", "Controlado");
insert into tb_categoria(receita_categoria, uso_categoria, consulmo_categoria)
values(true, "Infantil ", "Temporário ");
insert into tb_categoria(receita_categoria, uso_categoria, consulmo_categoria)
values(true, "Infantil ", "Diário ");
insert into tb_categoria(receita_categoria, uso_categoria, consulmo_categoria)
values(true, "Adulto", "Temporário ");
insert into tb_categoria(receita_categoria, uso_categoria, consulmo_categoria)
values(true, "Adulto", "Diário ");

/*criando as tabela tb_produto*/
create table tb_produto(
/*atributos*/
id_produto bigint auto_increment,
nome_produto varchar(255),
marca_produto varchar(255),
tipo_produto varchar(25),
quant_produto int,
preco decimal(8,2),
estrang_categoria bigint,

/*chave primaria*/
primary key(id_produto),

/*chave estrangeira*/
foreign key(estrang_categoria) references tb_categoria(id_categoria)
);

/*Popule esta tabela Categoria com até 8 dados.*/
insert into tb_produto(nome_produto, marca_produto, tipo_produto, quant_produto, preco, estrang_categoria)
values("Aspirina ", "Genérico ", "Comprimido ", 2 , 10.25, 1);
insert into tb_produto(nome_produto, marca_produto, tipo_produto, quant_produto, preco, estrang_categoria)
values("Paracetamol  ", "Genérico ", "Comprimido ", 2 , 35.25, 3);
insert into tb_produto(nome_produto, marca_produto, tipo_produto, quant_produto, preco, estrang_categoria)
values("Dipirona  ", "Genérico ", "Comprimido ", 2 , 25.25, 2);
insert into tb_produto(nome_produto, marca_produto, tipo_produto, quant_produto, preco, estrang_categoria)
values("Brometo de Ipratrópico ", "Genérico ", "Liquido ", 2 , 10.25, 1);
insert into tb_produto(nome_produto, marca_produto, tipo_produto, quant_produto, preco, estrang_categoria)
values("Alestra 20 ", "Unic ", "Comprimido ", 4 , 45.25, 4);
insert into tb_produto(nome_produto, marca_produto, tipo_produto, quant_produto, preco, estrang_categoria)
values("Atenolol ", "Genérico ", "Liquido ", 2 , 215.25, 5);
insert into tb_produto(nome_produto, marca_produto, tipo_produto, quant_produto, preco, estrang_categoria)
values("Aspirina ", "Genérico ", "Comprimido ", 5 , 20.25, 3);
insert into tb_produto(nome_produto, marca_produto, tipo_produto, quant_produto, preco, estrang_categoria)
values("Aspirina ", "Genérico ", "Liquido ", 10 , 55.25, 5);

/*Faça um select que retorne os Produtos com o valor maior do que 50 reais.*/
select * from tb_produto where preco >= 50.00;

/*Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.*/
select * from tb_produto where preco between 3 and 60;

/*Faça um select  utilizando LIKE buscando os Produtos com a letra B.*/
select * from tb_produto where nome_produto like 'b%';

/*Faça um um select com Inner join entre  tabela categoria e produto.*/
select tb_produto.nome_produto, tb_produto.tipo_produto, tb_categoria.receita_categoria as Remedios_com_receita
from tb_produto inner join tb_categoria on tb_categoria.id_categoria = tb_produto.estrang_categoria;

/*Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são cosméticos).*/

select * from tb_produto where preco between 10 and 35 order by  preco;






















