create database escola_naty_sql;

use escola_naty_sql;

create table alunos(
aluno_id int primary key,
nome varchar(255),
data_nascimento date,
endereco varchar(255),
telefone varchar(15)
);

create table alunos(
aluno_id int primary key,
nome varchar(255),
data_nascimento date,
endereco varchar(255),
telefone varchar(15)
);

create table professores(
professor_id int primary key,
nome varchar(255),
data_contratacao date
);

create table disciplinas
(
disciplina_id int primary key,
nome varchar(255),
codigo_disciplina varchar(10),
carga_horaria int
);

create table turmas(
turma_id int primary key,
ano_escolar int,
disciplina_id int, 
professor_id int,
foreign key (disciplina_id) references disciplinas(id),
foreign key (professor_id) references professores(professor_id) 
);

