CREATE DATABASE biblioteca;

CREATE TABLE livro (
id serial primary key,
titulo varchar (100)
);

CREATE TABLE usuario (
id serial primary key,
nome varchar (100) not null,
idade INTEGER
);

CREATE TABLE emprestimo (
id serial primary key,
id_do_livro INTEGER UNIQUE NOT NULL,
FOREIGN key (id_do_livro) REFERENCES livro(id),
id_do_usuario INTEGER UNIQUE NOT NULL,
FOREIGN key (id_do_usuario) REFERENCES usuario(id),
datae DATE
);

insert into livro (titulo) values ('1984');
insert into livro (titulo) values ('Evolucao da humanidade');
insert into livro (titulo) values ('Inteligencia Artificial');
insert into livro (titulo) values ('Linguagem de programação');
insert into livro (titulo) values ('Modificacao genetica');
insert into livro (titulo) values ('Cálculo básico');
insert into livro (titulo) values ('Alice no pais das maravilha');
insert into livro (titulo) values ('Cosmos');
insert into livro (titulo) values ('O Codigo');
insert into livro (titulo) values ('Algoritimos');

insert into usuario (nome, idade) values ('Kauan S.', 21);
insert into usuario (nome, idade) values ('Bruna A.', 18);
insert into usuario (nome, idade) values ('Bianca B.', 17);
insert into usuario (nome, idade) values ('Bruno A.', 15);
insert into usuario (nome, idade) values ('Ednaldo P.', 32);
insert into usuario (nome, idade) values ('Gabriela A.', 45);
insert into usuario (nome, idade) values ('Wagner M.', 15);
insert into usuario (nome, idade) values ('Pablo M.', 19);
insert into usuario (nome, idade) values ('Anna A.', 20);
insert into usuario (nome, idade) values ('Kauan A.', 20);
insert into usuario (nome, idade) values ('Jose A.', 21);


INSERT into emprestimo (id_do_livro, id_do_usuario, datae) VALUES (7,4, '2022-05-15');
INSERT into emprestimo (id_do_livro, id_do_usuario, datae) VALUES (2,7, '2022-06-12');
INSERT into emprestimo (id_do_livro, id_do_usuario, datae) VALUES (8,1, '2022-10-02');
INSERT into emprestimo (id_do_livro, id_do_usuario, datae) VALUES (1,2, '2022-07-22');
INSERT into emprestimo (id_do_livro, id_do_usuario, datae) VALUES (5,6, '2022-08-15');
INSERT into emprestimo (id_do_livro, id_do_usuario, datae) VALUES (6,5, '2022-12-12');
INSERT into emprestimo (id_do_livro, id_do_usuario, datae) VALUES (9,3, '2022-06-02');


SELECT l.titulo as Titulo_do_Livro, u.nome as Nome, e.datae from emprestimos as e

join usuario as u
on u.nome= e.id_do_usuario;

join livro as l
on l.titulo= e.id_do_livro;

SELECT * from e WHERE e.datae BETWEEN '2022-8-10' AND '2022-10-10';
