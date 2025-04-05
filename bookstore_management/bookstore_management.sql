create database bookstore_management;

use bookstore_management;

create table author (
	id_author int primary key auto_increment,
    name varchar(255) not null
);

create table book (
	id_book int primary key auto_increment,
    name varchar(255) not null,
    price float not null,
    id_author int,
    foreign key (id_author) references author(id_author)
);

create table employee (
	id_employee int primary key auto_increment,
    name varchar(255) not null,
    adress text not null
);

create table employee_book (
	id_employee int,
	id_book int,
    primary key (id_employee, id_book),
    foreign key (id_employee) references employee(id_employee),
    foreign key (id_book) references book(id_book)
);

