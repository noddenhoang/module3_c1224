create database school_management;

use school_management;

create table teacher(
	id int primary key auto_increment,
    `name` varchar(50) not null
);

create table student(
	id int primary key auto_increment,
    `name` varchar(50) not null,
    id_teacher int,
    foreign key (id_teacher) references teacher(id)
);