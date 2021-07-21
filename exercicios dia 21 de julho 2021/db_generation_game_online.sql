-- CRIANDO O BANCO DE DADOS --
CREATE DATABASE db_generation_game_online;

/*USANDO O DB db_generation_game_online*/
USE db_generation_game_online;

/*CRIANDO A TABELA tb_classe */
CREATE TABLE tb_classe(
	id_classe BIGINT AUTO_INCREMENT,
    nome_jogador VARCHAR(255),
    pontuacao_jogador INT,
    vida_jogador  INT,
    tipo_jogador VARCHAR(5),
    /*CRIANDO A CHAVE PRIMARIA*/
    PRIMARY KEY (id_classe)
);

/*Popule esta tabela Categoria com até 5 dados.*/
INSERT INTO tb_classe(nome_jogador, pontuacao_jogador, vida_jogador, tipo_jogador)
VALUES("Carlos", 1500, 100, "Vilão" );
INSERT INTO tb_classe(nome_jogador, pontuacao_jogador, vida_jogador, tipo_jogador)
VALUES("Karolayne", 3500, 100, "Vilão" );
INSERT INTO tb_classe(nome_jogador, pontuacao_jogador, vida_jogador, tipo_jogador)
VALUES("Mariana", 4000, 100, "Heroi");
INSERT INTO tb_classe(nome_jogador, pontuacao_jogador, vida_jogador, tipo_jogador)
VALUES("Victor", 3500, 100, "Vilão" );
INSERT INTO tb_classe(nome_jogador, pontuacao_jogador, vida_jogador, tipo_jogador)
VALUES("Rafaela", 4569, 100, "Heroi" );

SELECT * FROM tb_classe;

/*CRIANDO A TABELA tb_personagem */
CREATE TABLE tb_personagem(
	/*ATRIBUTOS*/
    id_personagem BIGINT AUTO_INCREMENT,
    nome_personagem VARCHAR(255),
    habilidade_personagem VARCHAR(255),
    armas_personagem VARCHAR(255),    
	ataque_personagem DECIMAL(8,2),
    defesa_personagem DECIMAL(8,2),
	velocidade_personagem DECIMAL(8,2),
	estrangeira_id_classe BIGINT,    
    /* CRIANDO A CHAVE PRIMARIA*/
    PRIMARY KEY (id_personagem),
	/* CRIANDO A CHAVE ESTRANGEIRA */
    FOREIGN KEY (estrangeira_id_classe) REFERENCES tb_classe(id_classe)
);

/*Popule esta tabela Categoria com até 8 dados.*/
INSERT INTO tb_personagem(nome_personagem, habilidade_personagem, armas_personagem, ataque_personagem, defesa_personagem, velocidade_personagem, estrangeira_id_classe)
VALUES("Capitão América", "Voar", "Escudo", 4000, 2500,90,3);
INSERT INTO tb_personagem(nome_personagem, habilidade_personagem, armas_personagem, ataque_personagem, defesa_personagem, velocidade_personagem, estrangeira_id_classe)
VALUES("Batman", "Inteligência", "Cinto de utilidades", 3000, 3500, 70.55, 3);
INSERT INTO tb_personagem(nome_personagem, habilidade_personagem, armas_personagem, ataque_personagem, defesa_personagem, velocidade_personagem, estrangeira_id_classe)
VALUES("Flash", "Velocidade", "", 305.5, 5500, 2356,5);
INSERT INTO tb_personagem(nome_personagem, habilidade_personagem, armas_personagem, ataque_personagem, defesa_personagem, velocidade_personagem, estrangeira_id_classe)
VALUES("Arqueiro Verde", "Mestre espadachim", "Arco e flechas", 2000, 3500, 100, 5);
INSERT INTO tb_personagem(nome_personagem, habilidade_personagem, armas_personagem, ataque_personagem, defesa_personagem, velocidade_personagem, estrangeira_id_classe)
VALUES("Rei do Crime", "Ataque Furtivo", " Diversas Armas ", 1000, 2000, 60, 1);
INSERT INTO tb_personagem(nome_personagem, habilidade_personagem, armas_personagem, ataque_personagem, defesa_personagem, velocidade_personagem, estrangeira_id_classe)
VALUES("Coringa", " Grande Humorista ", "  Luva com dispositivo elétrico  ", 3000, 1000, 200, 2);
INSERT INTO tb_personagem(nome_personagem, habilidade_personagem, armas_personagem, ataque_personagem, defesa_personagem, velocidade_personagem, estrangeira_id_classe)
VALUES("Arlequina ", "Imunidade a toxinas", "bastao de baseball", 2560, 1000, 5963, 4);
INSERT INTO tb_personagem(nome_personagem, habilidade_personagem, armas_personagem, ataque_personagem, defesa_personagem, velocidade_personagem, estrangeira_id_classe)
VALUES("Loki", "Super Força", "Feitiços", 3000, 2500, 3986, 2);

/*Faça um select que retorne os personagens com o poder de ataque maior do que 2000.*/
SELECT * FROM tb_personagem WHERE ataque_personagem >= 2000;

/*Faça um select trazendo  os personagens com poder de defesa entre 1000 e 2000.*/
SELECT * FROM tb_personagem WHERE ataque_personagem BETWEEN 1000 AND 2000;

/* Faça um select  utilizando LIKE buscando os personagens com a letra C. */
SELECT * FROM tb_personagem WHERE nome_personagem LIKE 'c%';

/*Faça um  select com Inner join entre  tabela classe e personagem.*/
SELECT tb_personagem.nome_personagem, tb_personagem.armas_personagem, tb_classe.tipo_jogador AS Categoria_Personagens
FROM tb_personagem INNER JOIN tb_classe ON tb_classe.id_classe = tb_personagem.estrangeira_id_classe;

/*Faça um select onde traga todos os personagem de uma classe específica (exemplo todos os personagens que são arqueiros)*/
SELECT * FROM tb_classe WHERE tipo_jogador IN ("VILÃO");











