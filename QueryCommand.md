# Query command==>select
distinct=for unique
limit=to get limited values
order by ASC=ascending order
order by DESC =descending order

 use student;
 show tables;
 select * from stud;
select id,stipend from stud;
 select city from stud;(it displays the duplicates)

 select DISTINCT city from stud;(shows only unique)
  select * from stud where city='kmm';
  select * from stud where city='wgl' and stipend>30000;

  select * from stud order by name ASC;
  select * from stud order by name DESC;

  select * from stud limit 2;
  select city from stud limit 2;
