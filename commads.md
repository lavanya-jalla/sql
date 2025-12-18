# commands notes
mysql -h localhost -u root -p
show databases;
use student;
select database();
show tables;

create table stud(Name varchar(20),Id int,city varchar(20),stipend float);
desc stud;
show create table stud;= to see how table is created
insert into stud values('Lavanya',546,'kmm',20000);
select * from stud;
insert into stud values('kushala',547,'kmm',30000),('kumari',548,'kmm',3000);
Query OK, 2 rows affected (0.009 sec)
