-- BANCO DE DADOS PARA UM BRECHO --
/*criando*/
create database db_brecho;


/*informando qual banco deve ser usado para criar*/
use db_brecho;

-- CRIANDO A TABELA DE PRODUTOS --
CREATE TABLE tb_produtos (
    id_produtos BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    quantidade INT,
    preco DECIMAL ,
    PRIMARY KEY (id_produtos)
);

-- INSERINDO DADOS NA TABELA --
insert into tb_produtos(nome, quantidade, preco) values ("Camisa", 35, 8.50);

insert into tb_produtos(nome, quantidade, preco) values ("Calça", 20, 18.50);

insert into tb_produtos(nome, quantidade, preco) values ("Vestido", 15, 8.99);

insert into tb_produtos(nome, quantidade, preco) values ("Casaco", 25, 20.99);

insert into tb_produtos(nome, quantidade, preco) values ("Meia", 20, 4.00);

-- SELECIONANDO DADOS DA TABELA --
select * from tb_produtos;

-- ALTERANDO A FORMA A EXIBIR NA TELA  DO CAMPO PREÇO DS TABELA--
alter table tb_produtos modify preco decimal(8,2);

-- ALTERANDO O NOME DO ATRIBUTO DA TABELA PRODUTO--
alter table tb_produtos change nome nomeProduto varchar(255);

-- INCERINDO DADOS NA TABELA --
insert into tb_produtos(nomeProduto, quantidade, preco) values ("Meia", 20, 4.00);

-- INCERINDO UM NOVO ATRIBUTO NA TABELA--
alter table tb_produtos add descricao varchar(255);

-- PARA APAGAR UM ATRIBUTO DA TABELA --
alter table tb_produtos drop descricao;

-- ATUALIZANDO OS DADOS DA LINHA 1 QUE PERTENCE A TABELA PRODUTOS--
update tb_produtos set preco = 8.50 where id_produtos = 1; 

-- DELETANDO DADOS IINSERIDOS DA TABELA DE TABELA --
delete from tb_produtos  where id_produtos = 5;

-- DELETANDO TODOS OS CAMPO DA TABELA PREENCHIDA --
delete  from tb_produtos;

-- DELETANDO TODO O CAMPO --
drop database db_brecho;

-- VERIFICANDO SE TEM UM VALOR MAIOR QUE 5--
select * from tb_produtos where preco > 5;

-- VERIFICANDO SE TEM O ITEM MEIA NA TABELA--
select * from tb_produtos where nomeProduto = "meia";

-- VERIFICANDO SE TEM O O ID = 6 NA TABELA--
select * from tb_produtos where id_produtos = 6;

-- VERIFICANDO SE TEM UMA QUANTIDADE > 5 E PREÇO > 8 NA TABELA--
select * from tb_produtos where quantidade > 5 and preco > 8;
