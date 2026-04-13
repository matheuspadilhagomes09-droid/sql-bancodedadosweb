CREATE DATABASE Escola;
create table pessoainstrutora (
    codigo int (14) primary key 
    nome varchar (200) not null,
    rua varchar (255) not null,
    numero char (8) not null,
    cep varchar (8) not null,
    estado char (2) not null,
    telefone varchar (20) not null
);
 

CREATE table disciplina (
codigo_disciplina int (14) primary key,
nomedisciplina varchar (200) not null,
codigo_pessoainstrutora int (14),
foreign key (codigo_pessoainstrutora)
references pessoainstrutora(codigo)

); 

create table pessoaestudante (
    codigoestudante int (14) primary key,
    nomeestudante varchar(200) not null,
    rua varchar (255) not null,
    numero char (8) not null,
    cep varchar (8) not null,
    estado char (2) not null,
    telefone varchar (20) not null,
    codigo_disciplina int (14),
    foreign key (codigo_disciplina)
    references disciplina (codigo_disciplina)
);


alter table pessoainstrutora
change codigo nomepessoainstrutor int (14);

alter table disciplina
change codigo_disciplina 
nomedisciplina int (14);

alter table pessoaestudante
change codigoestudante
nomeestudante int (14);

insert into pessoaestudante (
nomeestudante,
rua,
numero,
telefone,
) values (
    'neymarjunior',
    'vila belmiro',
    '123'
    '1199899-9798'
);





insert into pessoainstrutora (
    nome,
    rua,
    numero
) values (
    'fernando diniz',
    'itaquera',
    '157'
);

insert into disciplina (
    nomedisciplina,
    codigo_disciplina
) values (
    'geografia',
    '90909090121212'
);


update pessoaestudante (
    set telefone '1198765-9897'
    where codigoestudante
);


    delete from pessoaestudante
    where rua = 255;

    drop table pessoainstrutora;
    drop table disciplina;
    drop table pessoaestudante;

    drop database escola;