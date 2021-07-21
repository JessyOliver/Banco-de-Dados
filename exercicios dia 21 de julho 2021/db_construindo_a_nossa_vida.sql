/*criando o banco db_construindo_a_nossa_vida*/
create database db_construindo_a_nossa_vida;

/*usando */
use db_construindo_a_nossa_vida;

/*criando a tabela tb_categoria*/
create table tb_categoria(
id_categoria bigint auto_increment,
nome_cliente_categoria varchar(25),
entega_categoria boolean,
encomendar_categoria boolean,

/*criando chave primaria*/
primary key(id_categoria)
);
/*Popule esta tabela Categoria com até 5 dados.*/
insert into tb_categoria(nome_cliente_categoria, entega_categoria, encomendar_categoria )
values("José Carlos", false, true);
insert into tb_categoria(nome_cliente_categoria, entega_categoria, encomendar_categoria )
values("Camila Florence", true, true);
insert into tb_categoria(nome_cliente_categoria, entega_categoria, encomendar_categoria )
values("Maria Oliveira", true, false);
insert into tb_categoria(nome_cliente_categoria, entega_categoria, encomendar_categoria )
values("José Oliveira", false, false);
insert into tb_categoria(nome_cliente_categoria, entega_categoria, encomendar_categoria )
values("Carla Mariana Santos", false, false);

/*criando a tabela tb_produto*/
create table tb_produto(
id_produto bigint auto_increment,
nome_produto varchar(25),
marca_produto varchar(25),
codigo_produto varchar(6),
quantid_produto int,
preco_produto decimal(8,2),
estrang_categoria bigint,

/*chave primaria*/
primary key(id_produto),

/* chave estrangeira */
foreign key(estrang_categoria) references tb_categoria(id_categoria)
);

/*Popule esta tabela Produto com até 8 dados.*/
insert into tb_produto(nome_produto, marca_produto, codigo_produto, quantid_produto, preco_produto, estrang_categoria)
values("Cimento", "Votoran", "256985", 25, 875.00, 1);
insert into tb_produto(nome_produto, marca_produto, codigo_produto, quantid_produto, preco_produto, estrang_categoria)
values("Cano PVC", "Tigre", "659832", 3, 80.00, 2);
insert into tb_produto(nome_produto, marca_produto, codigo_produto, quantid_produto, preco_produto, estrang_categoria)
values("Areia", "Areião", "365298", 25, 875.00,3);
insert into tb_produto(nome_produto, marca_produto, codigo_produto, quantid_produto, preco_produto, estrang_categoria)
values("Cimento", "Votoran", "369856", 25, 365.00, 4);
insert into tb_produto(nome_produto, marca_produto, codigo_produto, quantid_produto, preco_produto, estrang_categoria)
values("Azulejo", "Bellota", "369582", 50, 1254.00, 1);
insert into tb_produto(nome_produto, marca_produto, codigo_produto, quantid_produto, preco_produto, estrang_categoria)
values("Viga", "Tecnol", "359861", 30, 105.00, 5);
insert into tb_produto(nome_produto, marca_produto, codigo_produto, quantid_produto, preco_produto, estrang_categoria)
values("Martelo", "Stanley", "215876", 5, 95.00, 2);
insert into tb_produto(nome_produto, marca_produto, codigo_produto, quantid_produto, preco_produto, estrang_categoria)
values("Pedras", "Sprint", "326598", 25, 1075.00, 5);

/*Faça um select que retorne os Produtos com o valor maior do que 50 reais.*/
select * from tb_produto where preco_produto >= 50.00;

/*Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.*/
select * from tb_produto where preco_produto between 3 and 60;

/*Faça um select  utilizando LIKE buscando os Produtos com a letra c.*/
select * from tb_produto where nome_produto like 'c%';

/*Faça um um select com Inner join entre  tabela categoria e produto.*/
select tb_produto.nome_produto, tb_produto.codigo_produto, tb_categoria.nome_cliente_categoria, tb_categoria.entega_categoria as Cituação_Cliente
from tb_produto inner join tb_categoria on tb_categoria.id_categoria = tb_produto.estrang_categoria;

/*Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são aves ou legumes).*/
select * from tb_produto where preco_produto between 55 and 100 order by  preco_produto;






