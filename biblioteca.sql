drop table usuarios;
drop table livros;
drop table autores;

create table autores(
id serial primary key,
nome varchar (100) NOT NULL
);

create table livros(
id serial primary key,
titulo varchar(100) NOT NULL,
autor_id integer NOT NULL REFERENCES autores(id)
);

create table usuarios(
id serial primary key,
nome varchar (100) NOT NULL 
);

insert into autores (nome) values ('Tanenball');
insert into autores (nome) values ('Sommerville');

insert into  livros (titulo, autor_id) values ('Engenharia de Software', 2);
insert into  livros (titulo, autor_id) values ('Sistemas operacionais', 1);
insert into  livros (titulo, autor_id) values ('Sistemas Distribuidos', 1);

--insert into  livros (titulo) values ('NULL');

--insert into  livros (titulo) values ('NULL');

select * from usuarios;
select * from autores;
select .ltitulo, a.nome  from livros as 
	inner join autores as a on where l.autor_id = a.id;
	where l.autor_id = 1;



