

# Group By
*******

The GROUP BY statement groups rows/records that have the same values into summary rows,
like "find the number of employees in each city".

The GROUP BY statement is often used with aggregate functions
(COUNT(), MAX(), MIN(), SUM(), AVG())
to group the result-set by one or more columns.

SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
ORDER BY column_name(s);


# Having
******

The HAVING clause was added to SQL because the WHERE keyword cannot be used with aggregate functions

SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
HAVING condition
ORDER BY column_name(s);

# practice

select count(Id) as No_of_Students,city from stud GROUP By city;

 select count(Id) as No_of_Students,city from stud GROUP By city ORDER BY count(id) DESC;
  select count(Id) as No_of_Students,city from stud GROUP By city ORDER BY count(id) ASC;

select count(Id) as No_of_Students,city from stud GROUP By city HAVING count(id)>1 ORDER BY count(id) DESC;

select count(id) from stud GROUP by stipend;