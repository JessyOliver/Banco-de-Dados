/*vriando o banco db_cursoDaMinhaVida*/
create database db_cursoDaMinhaVida;

/*usando db_cursoDaMinhaVida*/
use db_cursoDaMinhaVida;

/*creando as tabelas tb_categoria*/
create table tb_categoria(
id_categoria bigint auto_increment,
aluno_categoria varchar(255),
turma_categoria varchar(25),
instrutores_categoria varchar(255),

/*chave prmaria*/
primary key(id_categoria)
);

/*Popule esta tabela Categoria com até 5 dados*/
insert into tb_categoria(aluno_categoria, turma_categoria, instrutores_categoria)
values("José", "D", "Roberto, Fátima,Carla");
insert into tb_categoria(aluno_categoria, turma_categoria, instrutores_categoria)
values("Maria", "A", " Fátima,Fernanda");
insert into tb_categoria(aluno_categoria, turma_categoria, instrutores_categoria)
values("Luminario", "E", "Roberto, Fátima,Marilia, Paulo");
insert into tb_categoria(aluno_categoria, turma_categoria, instrutores_categoria)
values("Fernanda", "C", "Rafael, Fátima, Paula");
insert into tb_categoria(aluno_categoria, turma_categoria, instrutores_categoria)
values("Paula", "D", "Marcos, Carla");

/*creando as tabela tb_curso*/
create table tb_curso(
id_curso bigint auto_increment,
nome_curso varchar(25),
quant_instrutor_curso int,
vagas_curso int,
horario_curso time,
preco_curso decimal(8,2),
estrang_curso bigint,
/*criando chave primaria*/
primary key(id_curso),

/*chave estrangeira*/
foreign key(estrang_curso) references tb_categoria(id_categoria)
);

/*Popule esta tabela Produto com até 8 dados.*/
insert into tb_curso(nome_curso, quant_instrutor_curso, vagas_curso, horario_curso, preco_curso, estrang_curso )
values("Administração", 3, 45, '13:00' , 69.00, 1);
insert into tb_curso(nome_curso, quant_instrutor_curso, vagas_curso, horario_curso, preco_curso, estrang_curso )
values("Ciências Contábeis", 4, 45, '13:00' , 60.00, 1);
insert into tb_curso(nome_curso, quant_instrutor_curso, vagas_curso, horario_curso, preco_curso, estrang_curso )
values("Ciências Econômicas", 3, 45, '13:00' , 45.00, 1);
insert into tb_curso(nome_curso, quant_instrutor_curso, vagas_curso, horario_curso, preco_curso, estrang_curso )
values("Comércio Exterior ", 2, 45, '13:00' , 35.00, 1);
insert into tb_curso(nome_curso, quant_instrutor_curso, vagas_curso, horario_curso, preco_curso, estrang_curso )
values("Comércio Exterior ", 3, 45, '13:00' , 50.00, 1);
insert into tb_curso(nome_curso, quant_instrutor_curso, vagas_curso, horario_curso, preco_curso, estrang_curso )
values("Gestão Comercial ", 2, 45, '13:00' , 79.00, 1);
insert into tb_curso(nome_curso, quant_instrutor_curso, vagas_curso, horario_curso, preco_curso, estrang_curso )
values("Gestão da Qualidade", 4, 45, '13:00' , 60.00, 1);
insert into tb_curso(nome_curso, quant_instrutor_curso, vagas_curso, horario_curso, preco_curso, estrang_curso )
values("Informática", 4, 45, '13:00' , 55.00, 1);

/*Faça um select que retorne os Produtos com o valor maior do que 50 reais.*/
select * from tb_curso where preco_curso >= 50;

/*Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.*/
select * from tb_curso where preco_curso between 3 and 60;

/*Faça um select  utilizando LIKE buscando os Produtos com a letra J.*/
select * from tb_curso where nome_curso like 'j%';

/*Faça um select com Inner join entre  tabela categoria e produto.*/
select tb_curso.nome_curso, tb_curso.quant_instrutor_curso, tb_categoria.instrutores_categoria as Nossos_Instrutores
from tb_curso inner join tb_categoria on tb_categoria.id_categoria = tb_curso.estrang_curso;

/*Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são da categoria Java).*/
select * from tb_categoria where aluno_categoria between 'a' and 'z' order by aluno_categoria;






