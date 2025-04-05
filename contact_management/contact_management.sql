create database contacts_management;

use contacts_management;

create table person (
	id_person int primary key auto_increment,
    name varchar(255) not null
);

create table phone_number (
	id_phone_number int primary key auto_increment,
    id_person int,
    number int not null,
    foreign key (id_person) references person (id_person)
);

create table email (
	id_email int primary key auto_increment,
    id_person int,
    email int not null,
    foreign key (id_person) references person (id_person)
);