create database soccerteam_management;

use soccerteam_management;

create table coach(
	id int primary key auto_increment,
    `name` varchar(50)
);

create table soccerteam(
	id int primary key auto_increment,
    id_coach int unique,
    `name` varchar(50),
    foreign key (id_coach) references coach(id)
);

create table player(
	id int primary key auto_increment,
    `name` varchar(50),
    id_team int,
    foreign key (id_team) references soccerteam(id)
);

create table positions(
	id int primary key auto_increment,
    player_positions varchar(50)
);

create table player_positions(
	id_player int,
    id_positions int,
    primary key(id_player,id_positions),
    foreign key (id_player) references player(id),
    foreign key (id_positions) references positions(id)
);

create table `match`(
	id int primary key auto_increment,
    `date` datetime,
    id_team1 int,
    id_team2 int,
    foreign key (id_team1) references soccerteam(id),
    foreign key (id_team2) references soccerteam(id),
    check(id_team1 != id_team2)
);

create table match_player(
	match_id int,
    player_id int,
    primary key(match_id, player_id),
    foreign key (match_id) references `match`(id),
    foreign key (player_id) references player(id)
);