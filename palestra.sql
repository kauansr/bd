drop table participantes;
drop table discutir_sobre;
drop table apresentador;

create table apresentador(
id serial primary key,
nome varchar (100) NOT NULL
);

create table discutir_sobre(
id serial primary key,
titulo varchar(100) NOT NULL,
apresenta_id integer NOT NULL REFERENCES apresentador(id)
);

create table participantes(
id serial primary key,
nome varchar (100) NOT NULL 
);

insert into apresentador (nome) values ('Light');
insert into apresentador (nome) values ('Lelouch');

insert into  discutir_sobre (titulo, apresenta_id) values ('Engenharia Social', 2);
insert into  discutir_sobre (titulo, apresenta_id) values ('Manipulação Mental', 1);
insert into  discutir_sobre (titulo, apresenta_id) values ('Fenomenos do Universo', 1);


select * from participantes;
select * from apresentador;
select .ltitulo, a.nome  from discutir_sobre as 
	inner join apresentador as a on where l.apresenta_id = a.id;
	where l.apresenta_id = 1;



