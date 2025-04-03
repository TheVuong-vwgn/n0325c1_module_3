create database student_management_n0325c1;

use student_management_n0325c1;

create table student (
		id int primary key auto_increment,
		name varchar(50),
        score double
);

insert into student (id, name, score) values (1, 'Ngiduyen Van A', 6);
insert into student values (2, 'Nguyen Van b', 6);
insert into student values (3, 'Nguyen Van c', 6);

select * from student;

update student
      set name = 'Nguyen Van C'
where id = 1;

set sql_safe_updates = 0;
delete from student;
set sql_safe_updates = 1;

drop table student;
drop database student_management_n0325c1;