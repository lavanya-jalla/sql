# The Query Command - SELECT:


Where clause:
select * from emp where ................

Operators
Operator        Description
=               Equal
>               Greater than
<               Less than
>=              Greater than or equal
<=              Less than or equal
<>              Not equal

AND   OR

BETWEEN         Between a certain range

IN              To specify multiple values for a column
NOT IN

IS
IS NOT

LIKE            Search for a pattern - %

1. The percent sign (%) represents zero, one, or multiple characters
2. The underscore sign (_) represents one, single character

Wild Cards: % and _

Examples:
WHERE studName LIKE 'a%'     Finds any values that starts with "a"
WHERE studentName LIKE '%a'     Finds any values that ends with "a"
WHERE studentName LIKE '%on%'   Finds any values that have "on" in any position
WHERE studentName LIKE '_r%'    Finds any values that have "r" in the second postion
WHERE studentName LIKE 'a_%_%'  Finds any values that starts with "a" and are at least 3 chars in length
WHERE ContactName LIKE 'a%o'     Finds any values that starts with "a" and ends with "o"


# practice
 select * from stud where city='hyd';
 select * from stud where stipend>5000
 select * from stud where stipend<=2000

 select * from stud where stipend>2000 AND stipend<40000;
 select * from stud where stipend>2000 AND stipend<=40000;
 select * from stud where branch<>'mech';


 select * from stud where city IN('wgl','hyd');
  select * from stud where city ='wgl' OR city='hyd';
  select * from stud where stipend BETWEEN 3000 and 30000;

  select * from stud where name LIKE '%a%';
  select * from stud where name LIKE '%a';
  select * from stud where name LIKE '_ee%';
  select * from stud where name LIKE '___';


  select * from stud where dob IS NOT null;
  select * from stud where dob IS null;