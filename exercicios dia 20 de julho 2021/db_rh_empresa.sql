-- BANCO DE DADOS SERVIÇO DE RH --

/*CRIANDO O BD*/
create database db_Rh;

/* USANDO O BD CRIADO ACIMA*/
use db_Rh;

/* CRIANDO TABELA FUNCIONÁRIOS NO BANCO*/
create table tb_Funcionarios(
/*criando atributos da tabela*/
	id_funcionario BIGINT AUTO_INCREMENT,
    nome_funcionario VARCHAR(255),
    cpf_funcionario varchar(11),
	endereco_funcionario varchar(255),
    cargo_funcionario varchar(255),
    salario_funcionario decimal(8,2),
    
    /*criando a chave primaria*/
    PRIMARY KEY (id_funcionario)
);

/* PREENCHENDO A TABELA COM 5 DADOS*/
INSERT INTO tb_Funcionarios(nome_funcionario, cpf_funcionario, endereco_funcionario, cargo_funcionario, salario_funcionario)
VALUES("Carlos Marlon","36112379066","Rua: Carlo Drumond N° 25, Bairro: Santana - SP"," Vendedor", 1600.00);

INSERT INTO tb_Funcionarios(nome_funcionario, cpf_funcionario, endereco_funcionario, cargo_funcionario, salario_funcionario)
VALUES("Maria Carla","86666892003","Rua: MAria Pedroza N° 565, Bairro: Aparecida - SP"," Gerente", 5980.00);

INSERT INTO tb_Funcionarios(nome_funcionario, cpf_funcionario, endereco_funcionario, cargo_funcionario, salario_funcionario)
VALUES("Josefa Oliveria","29794935034","Rua: João XII N° 65, Bairro: Aparecida - SP"," Contador ", 3600.00);

INSERT INTO tb_Funcionarios(nome_funcionario, cpf_funcionario, endereco_funcionario, cargo_funcionario, salario_funcionario)
VALUES("Carla Pereira","06216849026","Rua:Campininha N° 23, Bairro: Juventude - SP"," Estoquista", 1880.00);

INSERT INTO tb_Funcionarios(nome_funcionario, cpf_funcionario, endereco_funcionario, cargo_funcionario, salario_funcionario)
VALUES("Fernanda Maria Carla","78144929047","Rua: Oliveira N° 565, Bairro: Santinho - SP"," Fachineiro ", 1800.00);

/*Faça um select que retorne os funcionários com o salário maior do que 2000.*/
SELECT * FROM tb_Funcionarios WHERE salario_funcionario > 2000;

/*Faça um select que retorne os funcionários com o salário menor do que 2000.*/
SELECT * FROM tb_Funcionarios WHERE salario_funcionario < 2000;

/*Ao término atualize um dado desta tabela através de uma query de atualização.*/
ALTER TABLE tb_Funcionarios ADD celular_funcionario VARCHAR(11);

/* PREENCHENDO A TABELA COM 5 DADOS*/
INSERT INTO tb_Funcionarios(nome_funcionario, cpf_funcionario, endereco_funcionario, celular_funcionario, cargo_funcionario, salario_funcionario)
VALUES("Carlos Marlon","36112379066","Rua: Carlo Drumond N° 25, Bairro: Santana - SP","356985698"," Vendedor", 1600.00);

SELECT * FROM tb_Funcionarios;
