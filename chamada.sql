drop table usuarios;
drop table nomes;
drop table sobrenome;

create table nomes(
id serial primary key,
nome varchar (100) NOT NULL
);

create table sobrenome(
id serial primary key,
sobre_nome varchar(100) NOT NULL,
nome_id integer NOT NULL REFERENCES nomes(id)
);

create table usuarios(
id serial primary key,
nome varchar (100) NOT NULL 
);

insert into nomes (nome) values ('Pablo');
insert into nomes (nome) values ('Kaio');

insert into  sobrenome (sobre_nome, nome_id) values ('Rogger', 2);
insert into  sobrenome (sobre_nome, nome_id) values ('Sidder', 1);
insert into  sobrenome (sobre_nome, nome_id) values ('Kranner', 1);



select * from usuarios;
select * from nomes;
select .lsobre_nome, a.nome  from sobrenome as 
	inner join nomes as a on where l.nome_id = a.id;
	where l.nome_id = 1;



