create database contacts;

use contacts;

create table human(
	id int primary key auto_increment,
    name varchar(50) not null
);

create table phonenumber(
	id int primary key auto_increment,
    `number` char(10),
    id_human int,
    foreign key (id_human) references human(id)
);

create table email(
	id int primary key auto_increment,
    mailaddress varchar(255),
    id_human int,
    foreign key (id_human) references human(id)
);