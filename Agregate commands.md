

# Aggregate Functions :

count()  -> count records
avg()    -> average
sum()    -> sum
min()    -> min
max()    -> max


Aliases - giving a different name to field or result column

Sub queries -> A query in a query

-> IN
-> nested select


# practice
 select min(id),min(stipend) from stud;

 select max(id),max(stipend) from stud;
 select max(id),max(stipend) ,min(id),max(stipend) from stud;

  select count(*) from stud;
  select count(*) as NO_OF_STUDENTS from stud;(here no of students is alias)
  select count(distinct city) as NO_OF_CIIES from stud;

  select sum(stipend) from stud;
  select avg(stipend) from stud;

  select min(stipend),avg(stipend) as AVG_of_Stipend,max(stipend) from stud;

  select * from stud order by stipend;
   select * from stud order by stipend DESC;

   select * from stud where city IN('hyd','wgl');

   # subqueries
    select city from stud where stipend=(select max(stipend) from stud);

    select name,id,branch,section from stud where stipend=(select max(stipend) from stud);

     select * from stud where name in(select name from stud where name like '%a');
