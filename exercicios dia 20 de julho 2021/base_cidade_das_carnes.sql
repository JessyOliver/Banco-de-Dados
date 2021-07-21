/*CRIANDO O DB db_cidade_das_carnes*/
create database db_cidade_das_carnes;

/*USANDO O DB db_cidade_das_carnes*/
use db_cidade_das_carnes;

/*CRIANDO A TABELA tb_categoria*/
create table tb_categoria(
/*ATRIBUTOS DA TABELA*/
id bigint auto_increment,
descricao varchar(255) not null,
ativo boolean not null,

/*CRIANDO CHAVE PRIMARIA*/
primary key (id)
);

/*INSERINDO DADOS DESSA TABELA tb_categoria*/
insert into tb_categoria (descricao, ativo) values ("Bovino",true);
insert into tb_categoria (descricao, ativo) values ("Suino",true);
insert into tb_categoria (descricao, ativo) values ("Aves",true);
insert into tb_categoria (descricao, ativo) values ("pertence feijoada",true);
insert into tb_categoria (descricao, ativo) values ("imbutidos",true);
insert into tb_categoria (descricao, ativo) values ("soja",true);
insert into tb_categoria (descricao, ativo) values ("outros",true);

/*EXIBINDO SEUS DADOS*/
select * from tb_categoria;

/*CRIANDO A TABELA tb_produtos_*/
create table tb_produtos_ (
/*ATRIBUTOS DA TABELA*/
id bigint auto_increment,
nome varchar (255) not null,
preco decimal(6,2) not null,
qtproduto int not null,
dtvalidade date,
categoria_id bigint,

/*CRIANDO CHAVE PRIMARIA*/
primary key (id),

/*RECEBENDO A CHAVE EXTRANGEIRA DA TABELA tb_categoria*/
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

/*INSERINDO DAODS DA TABELA tb_produtos_*/
insert into tb_produtos_ (nome, preco, qtProduto, dtvalidade, categoria_id) 
values ("ASA",40.00,30, "2021-11-07", 3);
insert into tb_produtos_ (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Picanha",20.00,30, "2021-11-08", 1);
insert into tb_produtos_ (nome, preco, qtProduto, dtvalidade, categoria_id) values ("coxa de frango",20.00,30, "2021-11-07", 3);
insert into tb_produtos_ (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Bacon",30.00,30, "2021-11-09", 1);
insert into tb_produtos_ (nome, preco, qtProduto, dtvalidade, categoria_id) values ("hamburguer",60.00,30, "2021-09-07", 5);
insert into tb_produtos_ (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Cupim",20.00,30, "2021-11-10", 1);
insert into tb_produtos_ (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Peito de frango",25.00,30, "2021-11-09", 3);
insert into tb_produtos_ (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Orelha de porco",20.00,30, "2021-11-07", 4);
insert into tb_produtos_ (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Salame",18.00,30, "2021-11-21", 5);
insert into tb_produtos_ (nome, preco, qtProduto, dtvalidade, categoria_id) values ("medalhao",50.00,30, "2021-11-15", 3);
insert into tb_produtos_ (nome, preco, qtProduto, dtvalidade, categoria_id) values ("mocoto",20.00,30, "2021-10-05", 2);
insert into tb_produtos_ (nome, preco, qtProduto, dtvalidade, categoria_id) values ("chuleta",20.00,30, "2021-10-07", 1);
insert into tb_produtos_ (nome, preco, qtProduto) values ("acendedor de churrasqueira",20.00,30);
insert into tb_produtos_ (nome, preco, qtProduto) values ("soprador de churrasqueira",35.00,30);

/*EXIBINDO A TABELA tb_produtos_*/
select * from tb_produtos_;

/*select nome, preco, categoria_id from td_produtos_; não funcionou */

/*localiza dentro do arquivo nome que inicie com as ha */
select * from tb_produtos_ where nome like "ha%";

/*localiza dentro do arquivo nome que termine com ha */
select * from tb_produtos_ where nome like "%ha";

/*localiza dentro do arquivo nome que tenham ha na palavra */
select * from tb_produtos_ where nome like "%ha%";

/*retornando valores expecificos abaixo*/
select * from tb_produtos_ where preco in (20.00, 30.00, 40,00);

/*traga os valores entre 20 e 40 reais*/
select * from tb_produtos_ where preco between 20.00 and 40.00;

/*ordenando os dados pelo preço crescente*/
select * from tb_produtos_ where preco between 20.00 and 40.00 order by preco;

/*ordenando os dados pelo preço decrescente*/
select * from tb_produtos_ where preco between 20.00 and 40.00 order by preco desc;

/*ordenar em ordem alfabetica */
select * from tb_produtos_ where preco between 20.00 and 40.00 order by nome, preco asc;

/*ordenando os dados pelo preço crescente*/
select * from tb_produtos_ where nome between 'a' and 'z' order by nome;

/*intervalo das datas*/
select * from tb_produtos_ where dtvalidade between '2021-11-07' and '2021-11-15' order by dtvalidade, nome;

/*quantas linhas temos na tabela*/
select count(*) from tb_produtos_;

/*quantas linhas tem preenchidas na categoria_id*/
select count(categoria_id) as Total_Linhas from tb_produtos_;

/*somando os precos da tabela tb_produtos_*/
select sum(preco) as Soma_Preco from tb_produtos_;

/*tirando a media somando os valores e dividindo pela quantidade de produtos cadastrados*/
select avg(preco) as Média from tb_produtos_;
/*(as Média) o apelido para exibir a função*/

/*agrupando as categorias e exibindo aa médias*/
select categoria_id as Categoria, avg (preco) as Média from tb_produtos_ group by categoria_id;

/*formatadno o campo para aparecer somente 2 numeros apos a virgula */
select categoria_id as Categoria,format(avg (preco), 2)  as Média from tb_produtos_ group by categoria_id;

/*valor maximo apenas*/
select max(preco) as Preço_Máximo from tb_produtos_;

/*valor minímo apenas*/
select min(preco) as Preço_Máximo from tb_produtos_;

/*exibindo o preco máximo com todas as informações da tabela*/
select * from tb_produtos_ where preco = (select max(preco) as Preço_Máximo from tb_produtos_);

/*exibindo o preco minimo com todas as informações da tabela*/
select * from tb_produtos_ where preco = (select min(preco) as Preço_Máximo from tb_produtos_);

/*consultas do tipo Join*/
/*inner join selecionando os campos da tabela tb_produtos_  e tb_categoria em união com a tabela tb_categoria*/
select tb_produtos_.nome, tb_produtos_.preco, tb_categoria.descricao as Categoria
from tb_produtos_ inner join tb_categoria on tb_categoria.id = tb_produtos_.categoria_id;

/*left join todos que tem relação mais o que não tiver relação do lado esquerdo antes do join*/
select tb_produtos_.nome, tb_produtos_.preco, tb_categoria.descricao as Categoria
from tb_produtos_ left join tb_categoria on tb_categoria.id = tb_produtos_.categoria_id;

/*right join todos que tem relação mais o que não tiver relação do lado direiro antes do join */
select tb_produtos_.nome, tb_produtos_.preco, tb_categoria.descricao as Categoria
from tb_produtos_ right join tb_categoria on tb_categoria.id = tb_produtos_.categoria_id;

