create database book_store;

use book_store;

create table book(
	id int primary key auto_increment,
    `name` varchar(255) not null,
    price decimal not null
);

create table author(
	id int primary key auto_increment,
    `name` varchar(255) not null
);

create table book_author(
    id_book int not null,
    id_author int not null,
    primary key (id_book, id_author),
    foreign key (id_book) references book(id),
    foreign key (id_author) references author(id)
);

create table staff(
	id int primary key auto_increment,
	`name` varchar(255) not null,
    address varchar(255)
);

create table staff_book(
	id_staff int not null,
    id_book int not null,
    primary key (id_staff, id_book),
    foreign key (id_book) references book(id),
    foreign key (id_staff) references staff(id)
);
