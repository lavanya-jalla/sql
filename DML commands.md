# DML commands notes= insert,update,delete
mysql -h localhost -u root -p
show databases;
use student;
select database();
show tables;

# insert: to insert data into the table==> inset into values
insert into tablename(col1,col2,col3.....)values(val1,val2,val3);
insert into tablename(val1,val2,val3,....)=>mostly we use this

 insert into stud values('Ram',899,'wgl',30000);
  insert into stud values('suma',809,'wgl',35000),('rama',819,'wgl',3500);
   insert into stud(Name,city,Id) values ("seetha",'hyd',990);


** select query insert one table to another
insert into newtablename select * from oldtablename;
insert into stude select * from stud;

# update: is used to modify or update the data==>update set where
update tablename set col1=val,col3=val where col2=val;(for particular stud)

update stud SET city='hyd',stipend='40000' where id=547;*(for particular one)
 update stud set branch='CSE';(for all)

# delete: used to delete records in existing table
delete from tablename where condition;

delete from stud where stipend<5000;
delete from stud;(table records deleted same like truncate)

