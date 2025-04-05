create database football_management;

use football_management;

create table manager (
	id_manager int primary key auto_increment,
    name varchar(255) not null
);

create table team (
	id_team int primary key auto_increment,
    id_manager int unique,
	name varchar(255) not null,
    foreign key (id_manager) references manager (id_manager)
);

create table player (
	id_player int primary key auto_increment,
    id_team int,
	name varchar(255) not null,
    foreign key (id_team) references team (id_team)
);


create table position (
	id_position int primary key auto_increment,
	position varchar(255) not null
);

create table football_match (
	id_football_match int primary key auto_increment,
	team_A int,
    team_B int,
    foreign key (team_A) references team  (id_team),
    foreign key (team_B) references team  (id_team),
    check (team_A != team_B) -- kiểm tra 2 đội trong 1 trận không bị trùng
);

create table player_position (
    id_player int,
    id_position int,
    primary key (id_player, id_position),
    foreign key (id_player) references player (id_player),
	foreign key (id_position) references position (id_position)
);

create table match_player (
	id_football_match int,
    id_player int,
    primary key (id_football_match, id_player),
    foreign key (id_football_match) references football_match (id_football_match),
	foreign key (id_player) references player (id_player)
);