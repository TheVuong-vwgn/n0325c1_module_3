create database school_management;

use school_management;

create table teacher (
	id_teacher int primary key auto_increment,
    name varchar(255) not null
);

create table student (
	id_student int primary key auto_increment,
    id_teacher int,
	name varchar(255) not null,
    foreign key (id_teacher) references teacher (id_teacher)
);