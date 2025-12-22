# views

In SQL, a view is a virtual table based on the result-set of a query.

VIEWS are virtual tables that do not store any data of their own but display data stored in other tables.

A view contains rows and columns, just like a real table.
The fields in a view are fields from one or more real tables in the database.

You can add SQL statements and functions to a view and present the data as if the data were coming from one single table.

A view is created with the CREATE VIEW statement.


CREATE VIEW view_name AS
SELECT column1, column2, ...
FROM table_name
WHERE condition;


# practice

 show full tables;
+-------------------+------------+
| Tables_in_country | Table_type |
+-------------------+------------+
| apps_countries    | BASE TABLE |
| continents        | BASE TABLE |
| countries         | BASE TABLE |
+-------------------+------------+

 create view country_view as select country_id,display_order,name,full_name from countries;

  desc country_view;

   show full tables;
+-------------------+------------+
| Tables_in_country | Table_type |
+-------------------+------------+
| apps_countries    | BASE TABLE |
| continents        | BASE TABLE |
| countries         | BASE TABLE |
| country_view      | VIEW       |
+-------------------+------------+

create view countries_view as select country_id,display_order,name,full_name,continent_code from countries;
Query OK, 0 rows affected (0.011 sec)

MariaDB [country]> show full tables;
+-------------------+------------+
| Tables_in_country | Table_type |
+-------------------+------------+
| apps_countries    | BASE TABLE |
| continents        | BASE TABLE |
| countries         | BASE TABLE |
| countries_view    | VIEW       |
| country_view      | VIEW       |
+-------------------+------------+
5 rows in set (0.002 sec)

MariaDB [country]> select * from countries_view;

 select * from countries_view where continent_code='AS';

  select count(*) from countries_view where continent_code='AS';