drop lojadigital;
--tabela produtos
create table produtos (

    id serial primary key,
    nome varchar(100) not null
);

--tabela cliente
create table clientes(

    id serial primary key,
    nome varchar(200) not null
);

--junta os id das tabelas acima
create table vendas(

    id serial primary key,
    id_produto integer not null,
    id_clientes integer no null
);

--adiciona chave estrangeira referenciada a tabela
alter table vendas
add CONSTRAINT VdaProd
FOREIGN KEY (id_produto) references produtos(id);


--chave estrangeira referenciada a tabela
alter table vendas
add CONSTRAINT VdaCli
FOREIGN KEY (id_clientes) references clientes(id);

--inserer em produto em nome
insert into produto (nome) values ('carro'),('computador'),('alface'),('pet'),('cidade');

--inserer em clientes em nome 
insert into clientes (nome) values ('Junin'),('Zezin'),('Gabreiele'),('kuririn');

--insere em vendas os id de produto e clientes
insert into vendas (id_produto,id_clientes) values (1,1),(2,2),(2,3),(4,1),(4,3),(4,4);

--mostra tudo de vendas
select * FROM vendas;

--quem comprou o que?
select cli.nome as clientes, prod.nome as produto FROM vendas as vda;
join produtos as prod on prod.id = vda.id_produto
join clientes as cli on cli.id = vda.id_clientes;

--right oq esta dentro e fora da interseccao, left o lado q so vem os comprados
--quero todos produtos mostrando os que foram comprados ou não
select prod.nome,vda.id from vendas as vda
right join produtos as prod on prod.id = vda.id_produto;
