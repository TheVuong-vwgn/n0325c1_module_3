create database bank_management;

use bank_management;

create table client (
	id_client int primary key auto_increment,
    name varchar(255) not null
);

create table bank_accout (
	id_bank_accout int primary key auto_increment,
    id_client int unique,
    balance float not null,
    foreign key (id_client) references client (id_client)
);