create database cadastro_node;

create table usuarios (
    id int AUTO_INCREMENT primary key,
    nome varchar (100) not null,
    email varchar (100) not null,
    telefone varchar (20),
    created_at timestamp default current_timestamp
);
