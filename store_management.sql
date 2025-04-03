create database store_management;

use store_management;

-- Tạo bảng
create table product (
	id int primary key auto_increment,
	name varchar(50) not null,
    description varchar(100),
    price double,
    stock int
);

-- Thêm dữ liệu
insert into product values (1, 'Xoai', 'Xoai chua lam', 10.4, 20);
insert into product (id, name, description, price, stock) values (2, 'Man', 'Man ngot lam', 5.8, 10);
insert into product (id, name) values (3, 'Cam');

-- Truy vấn dữ liệu
select * from product;
select id, name, price from product;
select id,name,price from product where price < 10000;

-- Cập nhật dữ liệu
set sql_safe_updates = 0;
update product set price = 5000;
set sql_safe_updates = 1;
update product set price = 10000 where id = 1;
select * from product;

-- Chỉnh sửa bảng
alter table product add Barcode varchar(25) ;
alter table product add Warranty int not null default 6;
select * from product;

-- Xóa dữ liệu 
set sql_safe_updates = 0;
delete from product ;
set sql_safe_updates = 1;	
delete from product where id = 1;
select * from product;

-- Xóa bảng  
drop table product;

-- Xóa cơ sở dữ liệu
drop database store_management;
drop database if exists store_management;
