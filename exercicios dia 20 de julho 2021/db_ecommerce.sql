-- BANCO DE DADOS PARA UM ECOMMERCE--
/*CRIANDO O DB db_ecommerce*/
CREATE DATABASE db_ecommerce;

/*USANDO O DB db_ecommerce*/
USE db_ecommerce;

/* CRIANDO A TABELA DO DB tb_produtos*/
CREATE TABLE tb_produto_ecommerce(
	/*CRIANDO OS ATRIBUTOS NECESSÁRIOS*/
    id_produtos BIGINT AUTO_INCREMENT,
    nome_produtos VARCHAR(255),
    descricao_produtos VARCHAR(255),
    tamanho_produtos VARCHAR(2),
    quantidade_produtos INT,
    preco_produtos DECIMAL(8,2),
    
    /*CRIANDO CHAVE PRIMARIA*/
	PRIMARY KEY (id_produtos)
);

/*INSERINDO DADOS NA TABELA*/
INSERT INTO tb_produto_ecommerce(nome_produtos, descricao_produtos, tamanho_produtos, quantidade_produtos, preco_produtos)
VALUES("TV","vermelha","M", 10, 2659.99);

INSERT INTO tb_produto_ecommerce(nome_produtos, descricao_produtos, tamanho_produtos, quantidade_produtos, preco_produtos)
VALUES("computador","rosa","G", 20, 5698.99);

INSERT INTO tb_produto_ecommerce(nome_produtos, descricao_produtos, tamanho_produtos, quantidade_produtos, preco_produtos)
VALUES("calça","jeans","44", 23, 80.99);

INSERT INTO tb_produto_ecommerce(nome_produtos, descricao_produtos, tamanho_produtos, quantidade_produtos, preco_produtos)
VALUES("bola","preta","", 30, 22.99);

INSERT INTO tb_produto_ecommerce(nome_produtos, descricao_produtos, tamanho_produtos, quantidade_produtos, preco_produtos)
VALUES("chapeu","calboy","42", 10, 659.99);

INSERT INTO tb_produto_ecommerce(nome_produtos, descricao_produtos, tamanho_produtos, quantidade_produtos, preco_produtos)
VALUES("celular","chadres","20", 10, 2999.99);

INSERT INTO tb_produto_ecommerce(nome_produtos, descricao_produtos, tamanho_produtos, quantidade_produtos, preco_produtos)
VALUES("vestido","beje","M", 10, 89.99);

INSERT INTO tb_produto_ecommerce(nome_produtos, descricao_produtos, tamanho_produtos, quantidade_produtos, preco_produtos)
VALUES("saia","vermelha","M", 10, 22.99);

/*Faça um select que retorne os produtos com o valor maior do que 500.*/
SELECT * FROM tb_produto_ecommerce WHERE preco_produtos > 500;

/*Faça um select que retorne os produtos com o valor menor do que 500.*/
SELECT * FROM tb_produto_ecommerce WHERE preco_produtos < 500;

/*Ao término atualize um dado desta tabela através de uma query de atualização.*/
UPDATE tb_produto_ecommerce SET tamanho_produtos = "40" WHERE id_produtos = '1';

/*EXIBINDO TABELA*/
SELECT * FROM tb_produto_ecommerce;
