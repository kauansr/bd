drop biblioteca;
--tabela livros
create table livro (

    id serial primary key,
    nome varchar(100) not null,
    autores varchar(100)
);

--tabela usuarios
create table usuario(

    id serial primary key,
    nome varchar(200) not null
);

--junta os id das tabelas acima
create table emprestimos(
id serial primary key,
id_do_livro INTEGER UNIQUE NOT NULL,
FOREIGN key (id_do_livro) REFERENCES livro(id),
id_do_usuario INTEGER UNIQUE NOT NULL,
FOREIGN key (id_do_usuario) REFERENCES usuario(id),
datae DATE
);
);

--adiciona chave estrangeira referenciada a tabela
alter table emprestimos
add CONSTRAINT emprestliv
FOREIGN KEY (id_do_livro) references livro(id);


--chave estrangeira referenciada a tabela
alter table emprestimos
add CONSTRAINT emprestuser
FOREIGN KEY (id_usuario) references usuario(id);

--inserer em livro em nome e autores
insert into livro (nome,autores) values ('1984','jorge');
insert into livro (nome,autores) values ('Evolucao da humanidade','anamaria');
insert into livro (nome,autores) values ('Inteligencia Artificial','angelica');
insert into livro (nome,autores) values ('Linguagem de programação','button');
insert into livro (nome,autores) values ('Modificacao genetica','angelina');
insert into livro (nome,autores) values ('Cálculo básico','steve');
insert into livro (nome,autores) values ('Alice no pais das maravilha','kuririn');
insert into livro (nome,autores) values ('Cosmos','Tom riddle');
insert into livro (nome,autores) values ('O Codigo','uzumaki');
insert into livro (nome,autores) values ('Algoritimos','giovanni');

insert into usuario (nome) values ('Kauan S.'),('Bruna A.'),('Bianca B.'),('Kauan A.'),('Jose A.'),('Anna A.');


--insere em emprestimos os id de livro e usuarios
insert into emprestimos (id_do_livro,id_usuario) values (1,1),(2,2),(2,3),(4,1),(4,3),(4,4);

--mostra tudo de vendas
select * FROM emprestimos;

--quem comprou o que?
select user.nome as usuarios , liv.nome as livros FROM emprestimos as emp;
join livros as liv on liv.id = emp.id_do_livro
join usuarios as user on user.id = emp.id_usuario;

--quero todos produtos mostrando os que foram comprados ou não
select liv.nome,emp.id from emprestimos as emp
right join livros as liv on liv.id = emp.id_do_livro;