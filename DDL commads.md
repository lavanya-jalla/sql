# DDL commands notes= create,alter,drop,truncate
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

alter table stud add dob date;(to insert new column)
 UPDATE stud SET dob = '2022-09-08' WHERE Id = 546; (to add for that particular dob coulmn)
 alter table stud drop column dob;(to delete dob column)


 ** create table stude as select * from stud;(creating another table same same of existing student table)
 desc stude;(we get same schema,data which is in student table)

 truncate table stude;(it deletes the data which is table)
 desc stude;(shows only the schema of table)

drop table stude;(deletes the schema,data simpliy entire table)
show tables;(we didnt have stude table .its deleted)