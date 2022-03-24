create database Mangas;
create table livros
(id_manga int PRIMARY KEY not null,
nome varchar (200),
data_postagem date not null,
CONSTRAINT fk_Mangas FOREIGN KEY (id_manga) REFERENCES Mangas (id_manga)

);

create table novels
(id_novel int PRIMARY KEY not null,
nome varchar (200),
data_postagem date not null,
id_manga int,
CONSTRAINT fk_novells FOREIGN KEY (id_manga) REFERENCES Mangas (id_manga)

);

Alter table novels
ADD CONSTRAINT fk_nownovels FOREIGN KEY (id_manga) REFERENCES Mangas (id_manga)
