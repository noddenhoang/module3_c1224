create database store_management;

use store_management;

create table product(
	id int primary key auto_increment,
    name varchar(250) not null,
    description varchar(250),
    price decimal,
    stock int
);

insert product value (3, "Chuột Logitech", "Chuột đắt nhưng được cái hay bị Double Click", 2000000, 6);

insert product (name, description, price, stock) value ("Acer Nitro 5", "Laptop gaming nhưng rất dân văn phòng", 25600000, 6);

insert product (name) value ("Màn hình MSI");

select * from product;

select id, name, price from product;

select id, name, price from product where price < 10000000;

set sql_safe_updates = 0;

update product set name = "Không có where";

set sql_safe_updates = 1;

update product set name = "Màn hình mờ dễ bị sọc" where id = 4;

alter table product add column barcode varchar(250) default(null);

alter table product add column warranty int default(6);

set sql_safe_updates = 0;

delete from product;

set sql_safe_updates = 1;

delete from product where id = 4;

drop table product;