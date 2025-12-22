# joins
→ Joins are used to combine data from multiple tables based on a related column.

→ Joins supported in MySQL:

INNER JOIN: Returns records that have matching values in both tables.

LEFT JOIN: Returns all records from the left table, and the matched records from the right table.

RIGHT JOIN: Returns all records from the right table, and the matched records from the left table.

CROSS JOIN: Returns all records from both tables.

# practice
select * from stud INNER JOIN person on stud.id=person.id;
select * from person INNER JOIN orders on person.id=orders.id;
+-------+-------+-----+------+---------+---------+--------+---------+------+
| fName | lname | id  | age  | section | country | ord_id | ord_num | id   |
+-------+-------+-----+------+---------+---------+--------+---------+------+
| uoo   | loo   | 700 |   19 | A       | INDIA   |      2 |      20 |  700 |
| deg   | oops  | 309 |   29 | A       | INDIA   |      3 |      80 |  309 |
+-------+-------+-----+------+---------+---------+--------+---------+------+

MariaDB [student]> select * from orders;
+--------+---------+------+
| ord_id | ord_num | id   |
+--------+---------+------+
|      2 |      20 |  700 |
|      3 |      80 |  309 |
+--------+---------+------+
2 rows in set (0.001 sec)

MariaDB [student]> select * from person;
+-------+--------+-----+------+---------+---------+
| fName | lname  | id  | age  | section | country |
+-------+--------+-----+------+---------+---------+
| deg   | oops   | 309 |   29 | A       | INDIA   |
| www   | google | 407 |   80 | A       | INDIA   |
| ggg   | hhh    | 417 |   50 | A       | INDIA   |
| uoo   | loo    | 700 |   19 | A       | INDIA   |
+-------+--------+-----+------+---------+---------+
4 rows in set (0.001 sec)

MariaDB [student]> select * from orders INNER JOIN person on person.id=orders.id;
+--------+---------+------+-------+-------+-----+------+---------+---------+
| ord_id | ord_num | id   | fName | lname | id  | age  | section | country |
+--------+---------+------+-------+-------+-----+------+---------+---------+
|      2 |      20 |  700 | uoo   | loo   | 700 |   19 | A       | INDIA   |
|      3 |      80 |  309 | deg   | oops  | 309 |   29 | A       | INDIA   |
+--------+---------+------+-------+-------+-----+------+---------+---------+
2 rows in set (0.001 sec)

MariaDB [student]> select * from orders Right JOIN person on person.id=orders.id;
+--------+---------+------+-------+--------+-----+------+---------+---------+
| ord_id | ord_num | id   | fName | lname  | id  | age  | section | country |
+--------+---------+------+-------+--------+-----+------+---------+---------+
|      2 |      20 |  700 | uoo   | loo    | 700 |   19 | A       | INDIA   |
|      3 |      80 |  309 | deg   | oops   | 309 |   29 | A       | INDIA   |
|   NULL |    NULL | NULL | www   | google | 407 |   80 | A       | INDIA   |
|   NULL |    NULL | NULL | ggg   | hhh    | 417 |   50 | A       | INDIA   |
+--------+---------+------+-------+--------+-----+------+---------+---------+
4 rows in set (0.001 sec)

MariaDB [student]> select * from orders LEFT JOIN person on person.id=orders.id;
+--------+---------+------+-------+-------+------+------+---------+---------+
| ord_id | ord_num | id   | fName | lname | id   | age  | section | country |
+--------+---------+------+-------+-------+------+------+---------+---------+
|      2 |      20 |  700 | uoo   | loo   |  700 |   19 | A       | INDIA   |
|      3 |      80 |  309 | deg   | oops  |  309 |   29 | A       | INDIA   |
+--------+---------+------+-------+-------+------+------+---------+---------+
2 rows in set (0.001 sec)

MariaDB [student]> select * from orders CROSS JOIN person on person.id=orders.id;
+--------+---------+------+-------+-------+-----+------+---------+---------+
| ord_id | ord_num | id   | fName | lname | id  | age  | section | country |
+--------+---------+------+-------+-------+-----+------+---------+---------+
|      2 |      20 |  700 | uoo   | loo   | 700 |   19 | A       | INDIA   |
|      3 |      80 |  309 | deg   | oops  | 309 |   29 | A       | INDIA   |
+--------+---------+------+-------+-------+-----+------+---------+---------+
2 rows in set (0.001 sec)

MariaDB [student]> select ord_id,id,fname,lname from orders CROSS JOIN person on person.id=orders.id;
ERROR 1052 (23000): Column 'id' in field list is ambiguous
MariaDB [student]> select ord_id,fname,lname from orders CROSS JOIN person on person.id=orders.id;
+--------+-------+-------+
| ord_id | fname | lname |
+--------+-------+-------+
|      3 | deg   | oops  |
|      2 | uoo   | loo   |
+--------+-------+-------+
2 rows in set (0.001 sec)

MariaDB [student]> select ord_id,fname,lname from orders right JOIN person on person.id=orders.id;
+--------+-------+--------+
| ord_id | fname | lname  |
+--------+-------+--------+
|      3 | deg   | oops   |
|   NULL | www   | google |
|   NULL | ggg   | hhh    |
|      2 | uoo   | loo    |
+--------+-------+--------+
4 rows in set (0.001 sec)


MariaDB [student]> select * from orders cross join person
    -> ;
+--------+---------+------+-------+--------+-----+------+---------+---------+
| ord_id | ord_num | id   | fName | lname  | id  | age  | section | country |
+--------+---------+------+-------+--------+-----+------+---------+---------+
|      2 |      20 |  700 | deg   | oops   | 309 |   29 | A       | INDIA   |
|      3 |      80 |  309 | deg   | oops   | 309 |   29 | A       | INDIA   |
|      2 |      20 |  700 | www   | google | 407 |   80 | A       | INDIA   |
|      3 |      80 |  309 | www   | google | 407 |   80 | A       | INDIA   |
|      2 |      20 |  700 | ggg   | hhh    | 417 |   50 | A       | INDIA   |
|      3 |      80 |  309 | ggg   | hhh    | 417 |   50 | A       | INDIA   |
|      2 |      20 |  700 | uoo   | loo    | 700 |   19 | A       | INDIA   |
|      3 |      80 |  309 | uoo   | loo    | 700 |   19 | A       | INDIA   |
+--------+---------+------+-------+--------+-----+------+---------+---------+
8 rows in set (0.001 sec)

MariaDB [student]> select * from orders inner join person;
+--------+---------+------+-------+--------+-----+------+---------+---------+
| ord_id | ord_num | id   | fName | lname  | id  | age  | section | country |
+--------+---------+------+-------+--------+-----+------+---------+---------+
|      2 |      20 |  700 | deg   | oops   | 309 |   29 | A       | INDIA   |
|      3 |      80 |  309 | deg   | oops   | 309 |   29 | A       | INDIA   |
|      2 |      20 |  700 | www   | google | 407 |   80 | A       | INDIA   |
|      3 |      80 |  309 | www   | google | 407 |   80 | A       | INDIA   |
|      2 |      20 |  700 | ggg   | hhh    | 417 |   50 | A       | INDIA   |
|      3 |      80 |  309 | ggg   | hhh    | 417 |   50 | A       | INDIA   |
|      2 |      20 |  700 | uoo   | loo    | 700 |   19 | A       | INDIA   |
|      3 |      80 |  309 | uoo   | loo    | 700 |   19 | A       | INDIA   |
+--------+---------+------+-------+--------+-----+------+---------+---------+