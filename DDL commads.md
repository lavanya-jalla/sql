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

# practice

 create table transactions(accnum int,accbal varchar(20),acctype varchar(20));
Query OK, 0 rows affected (0.023 sec)

MariaDB [account]> desc transactions;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| accnum  | int(11)     | YES  |     | NULL    |       |
| accbal  | varchar(20) | YES  |     | NULL    |       |
| acctype | varchar(20) | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
3 rows in set (0.033 sec)

MariaDB [account]> drop table transactions;
Query OK, 0 rows affected (0.072 sec)

MariaDB [account]> show tables;
Empty set (0.001 sec)

MariaDB [account]>  create table transactions(accnum int,accbal float,acctype varchar(20))
    -> ;
Query OK, 0 rows affected (0.023 sec)

MariaDB [account]> insert into transactions values(102,100000,'current'),(104,2999,'savings'),(100,60000,'current'),(200,5999,'savings');
Query OK, 4 rows affected (0.013 sec)
Records: 4  Duplicates: 0  Warnings: 0

MariaDB [account]> select * from transactions;
+--------+--------+---------+
| accnum | accbal | acctype |
+--------+--------+---------+
|    102 | 100000 | current |
|    104 |   2999 | savings |
|    100 |  60000 | current |
|    200 |   5999 | savings |
+--------+--------+---------+
4 rows in set (0.008 sec)

MariaDB [account]> update transactions set accbal=accbal+10000 where accnum=104;
Query OK, 1 row affected (0.012 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [account]> select * from transactions;
+--------+--------+---------+
| accnum | accbal | acctype |
+--------+--------+---------+
|    102 | 100000 | current |
|    104 |  12999 | savings |
|    100 |  60000 | current |
|    200 |   5999 | savings |
+--------+--------+---------+
4 rows in set (0.001 sec)

MariaDB [account]> update transactions set accbal=accbal-10000 where accnum=100;
Query OK, 1 row affected (0.004 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [account]> select * from transactions;
+--------+--------+---------+
| accnum | accbal | acctype |
+--------+--------+---------+
|    102 | 100000 | current |
|    104 |  12999 | savings |
|    100 |  50000 | current |
|    200 |   5999 | savings |
+--------+--------+---------+
4 rows in set (0.001 sec)

MariaDB [account]> roll back;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'roll back' at line 1
MariaDB [account]> rollback;
Query OK, 0 rows affected (0.000 sec)

MariaDB [account]> select * from transactions;
+--------+--------+---------+
| accnum | accbal | acctype |
+--------+--------+---------+
|    102 | 100000 | current |
|    104 |  12999 | savings |
|    100 |  50000 | current |
|    200 |   5999 | savings |
+--------+--------+---------+
4 rows in set (0.001 sec)

MariaDB [account]> rollback;
Query OK, 0 rows affected (0.000 sec)

MariaDB [account]> select * from transactions;
+--------+--------+---------+
| accnum | accbal | acctype |
+--------+--------+---------+
|    102 | 100000 | current |
|    104 |  12999 | savings |
|    100 |  50000 | current |
|    200 |   5999 | savings |
+--------+--------+---------+
4 rows in set (0.001 sec)

MariaDB [account]> update transactions set accbal=accbal-10000 where accnum=100;
Query OK, 1 row affected (0.009 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [account]> commit;
Query OK, 0 rows affected (0.000 sec)

MariaDB [account]> select * from transactions;
+--------+--------+---------+
| accnum | accbal | acctype |
+--------+--------+---------+
|    102 | 100000 | current |
|    104 |  12999 | savings |
|    100 |  40000 | current |
|    200 |   5999 | savings |
+--------+--------+---------+
4 rows in set (0.001 sec)

MariaDB [account]> rollback;
Query OK, 0 rows affected (0.001 sec)

MariaDB [account]> START TRANSACTION;
Query OK, 0 rows affected (0.000 sec)

MariaDB [account]>  savepoint savapointC;
Query OK, 0 rows affected (0.000 sec)

MariaDB [account]> select * from transactions;
+--------+--------+---------+
| accnum | accbal | acctype |
+--------+--------+---------+
|    102 |  70000 | current |
|    104 |  12999 | savings |
|    100 |  60000 | current |
|    200 |   5999 | savings |
+--------+--------+---------+
4 rows in set (0.001 sec)

MariaDB [account]> update transactions set accbal=accbal+10000 where accnum=100;
Query OK, 1 row affected (0.007 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [account]> update transactions set accbal=accbal+10000 where accnum=200;
Query OK, 1 row affected (0.001 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [account]> ROLLBACK TO savapointC;
Query OK, 0 rows affected (0.006 sec)

MariaDB [account]> select * from transactions;
+--------+--------+---------+
| accnum | accbal | acctype |
+--------+--------+---------+
|    102 |  70000 | current |
|    104 |  12999 | savings |
|    100 |  60000 | current |
|    200 |   5999 | savings |
+--------+--------+---------+
4 rows in set (0.001 sec)

MariaDB [account]> commit;
Query OK, 0 rows affected (0.000 sec)

MariaDB [account]> select * from transactions;
+--------+--------+---------+
| accnum | accbal | acctype |
+--------+--------+---------+
|    102 |  70000 | current |
|    104 |  12999 | savings |
|    100 |  60000 | current |
|    200 |   5999 | savings |
+--------+--------+---------+
4 rows in set (0.001 sec)

MariaDB [account]> update transactions set accbal=accbal+10000 where accnum=200;
Query OK, 1 row affected (0.003 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [account]> update transactions set accbal=accbal+10000 where accnum=100;
Query OK, 1 row affected (0.011 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [account]> select * from transactions;
+--------+--------+---------+
| accnum | accbal | acctype |
+--------+--------+---------+
|    102 |  70000 | current |
|    104 |  12999 | savings |
|    100 |  70000 | current |
|    200 |  15999 | savings |
+--------+--------+---------+
4 rows in set (0.001 sec)

MariaDB [account]>