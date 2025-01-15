create database bank;

use bank;

create table customer(
	id int primary key auto_increment,
    name varchar(50)
);

create table account(
	id int primary key auto_increment,
    balance decimal,
    id_customer int unique,
    foreign key (id_customer) references customer(id)
);