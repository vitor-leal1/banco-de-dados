DROP TABLE IF EXISTS endereco;
DROP TABLE IF EXISTS bairro;
DROP TABLE IF EXISTS cidade;
DROP TABLE IF EXISTS tarefa;

CREATE TABLE if not exists cidade (
idcidade integer PRIMARY KEY,
nome VARCHAR(40) NOT NULL,
uf varchar (2) not null );

create table bairro(
idbairro integer primary key,
nome varchar(20) not null,
idcidade integer not null,
	foreign key (idcidade)
	references cidade (idcidade));

create table endereco(
idendereco integer primary key,
logradouro varchar (30),
numero integer,
cep integer,
idbairro integer,
	foreign key (idbairro)
	references bairro (idbairro));
	
create table tarefa(
idtarefa integer primary key,
nome varchar (30),
valor float,
idtarefapai integer,
	foreign key (idtarefapai)
	references tarefa (idtarefa));
	
	