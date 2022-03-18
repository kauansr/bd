create table tb_aluno(
id serial PRIMARY KEY
nome varchar(100),
sobrenome varchar(100),
apelido varchar(100),
idade integer);

create table tb_professor(
nome varchar(100),
sobrenome varchar(100),
apelido varchar(100),
idade integer);

create table tb_salas(
nome varchar(100));

create table tb_biblioteca(
nome varchar(100));

create table tb_substitutos(
nome varchar(100),
sobrenome varchar(100),
apelido varchar(100),
idade integer);

create table tb_funcionarios(
nome varchar(100),
sobrenome varchar(100),
apelido varchar(100),
idade integer);

create table tb_chefedesala(
nome varchar(100),
sobrenome varchar(100),
apelido varchar(100),
idade integer);

create table tb_gremio(
nome varchar(100),
sobrenome varchar(100),
apelido varchar(100),
idade integer);

create table tb_peticoes(
nome varchar(100),
sobrenome varchar(100),
idade integer);

create table tb_integrantesdabiblioteca(
nome varchar(100),
sobrenome varchar(100),
idade integer);

create table tb_expulsos(
nome varchar(100),
sobrenome varchar(100),
apelido varchar(100),
idade integer);