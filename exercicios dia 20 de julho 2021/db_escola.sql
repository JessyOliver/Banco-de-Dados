-- CRIANDO O BANCO PARA ESCOLA--
CREATE DATABASE db_escola;

/*USANDO O DB db_escola*/
USE db_escola;

/*CRIANDO A TABELA tb_estudante*/
CREATE TABLE tb_estudante(
	/* ATRIBUTOS */
    id_estudante BIGINT AUTO_INCREMENT,
    nome_estudante VARCHAR(255),
    serie_estudante VARCHAR(10),
    periodo_estudante VARCHAR(255),
    ra_estudante VARCHAR(6),
    nota_estudante decimal(8,2),
    
    /*CRIANDO A CHAVE PRIMARIA*/
    PRIMARY KEY (id_estudante)
);

/*PREENCHENDO TABELA*/
INSERT INTO tb_estudante(nome_estudante, serie_estudante, periodo_estudante, ra_estudante, nota_estudante)
VALUES("Mariana Carvalho", "5°A", "Vespertino", "056985", 9);

INSERT INTO tb_estudante(nome_estudante, serie_estudante, periodo_estudante, ra_estudante, nota_estudante)
VALUES("Fernanda Feliciano", "7°A", "Vespertino", "256980", 8);

INSERT INTO tb_estudante(nome_estudante, serie_estudante, periodo_estudante, ra_estudante, nota_estudante)
VALUES("Felipe Carvalho", "5°A", "Vespertino", "569860", 6);

INSERT INTO tb_estudante(nome_estudante, serie_estudante, periodo_estudante, ra_estudante, nota_estudante)
VALUES("Fatima Beleza", "9°D", "Noturno", "023659", 9.5);

INSERT INTO tb_estudante(nome_estudante, serie_estudante, periodo_estudante, ra_estudante, nota_estudante)
VALUES("Camila Oliveira", "5°C", "Vespertino", "986590", 10);

INSERT INTO tb_estudante(nome_estudante, serie_estudante, periodo_estudante, ra_estudante, nota_estudante)
VALUES("Fernanda Santos", "9°B", "Noturno", "056985", 8);

INSERT INTO tb_estudante(nome_estudante, serie_estudante, periodo_estudante, ra_estudante, nota_estudante)
VALUES("Mariana Santos ", "5°C", "Vespertino", "569830", 7);

INSERT INTO tb_estudante(nome_estudante, serie_estudante, periodo_estudante, ra_estudante, nota_estudante)
VALUES("Mariana da Silva", "7°D", "Matutino", "698530", 9);

/* Faça um select que retorne o/as estudantes com a nota maior do que 7. */
SELECT * FROM tb_estudante WHERE nota_estudante > 7;

/* Faça um select que retorne o/as estudantes com a nota MENOR do que 7. */
SELECT * FROM tb_estudante WHERE nota_estudante < 7;

/*Ao término atualize um dado desta tabela através de uma query de atualização.*/
UPDATE tb_estudante SET serie_estudante = "8° D" WHERE id_estudante = '7';

SELECT * FROM tb_estudante;

