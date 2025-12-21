# Integrity Constraints:
-> to maintain the integrity of the table/database
-> Data stored in the database must be valid and correct
SQL constraints are used to specify rules for the data in a table.
If there is any violation between the constraint and the data action, the action is aborted.

Constraints can be column level or table level.
Column level constraints apply to a column and table level constraints apply to the whole table.

The following constraints are commonly used in SQL:

NOT NULL – Ensures that a column cannot have a NULL value

UNIQUE – Ensures that all values in a column are different

PRIMARY KEY – A combination of a NOT NULL and UNIQUE. Uniquely identifies each row in a table

FOREIGN KEY – Used to ensure Referential Integrity of the data – child and parent tables

CHECK – Ensures that the values in a column satisfies a specific condition

DEFAULT – Sets a default value for a column if no value is specified


Syntax:

CREATE TABLE table_name (
    column1 datatype constraint,
    column2 datatype constraint,
    column3 datatype constraint,
);


# practice

show create table stud;

# not null
create table persons(id int NOT NULL,
    -> lname varchar(200) NOT NULL,
    -> fname varchar(200) NOT NULL,
    -> age int
    -> );

    desc persons;

     insert into person values('lavanya','jalla',209,19),('aanya','abc',219,19),('deg','oops',309,29),('uoo','loo',700,19);

     alter table person modify age int NOT NULL;

# unique

CREATE TABLE parent (
    id int NOT NULL,
    lname varchar(255) NOT NULL,
    fname varchar(255),
    age int,
    CONSTRAINT UC_Person UNIQUE (id, lname)
);

alter table parent add UNIQUE(fname);

alter table parent add constraint uc_parent_lname UNIQUE(lname);


# primary

The PRIMARY KEY constraint uniquely identifies each record in a table.

Primary keys must contain UNIQUE values and cannot contain NULL values.
(Not NULL + UNIQUE)

A table can have only ONE primary key and it can have single or multiple columns / fields

CREATE TABLE persons (
    id int NOT NULL,
    lname varchar(255) NOT NULL,
    fname varchar(255),
    age int,
    PRIMARY KEY (ID)
);


alter table stud add constraint uc_stud_id PRIMARY KEY(id);

alter table stud DROP PRIMARY KEY(id);

# AUTO INCREMENT
CREATE TABLE persons (
    id int NOT NULL AUTO_INCREMENT,
    lname varchar(255) NOT NULL,
    fname varchar(255),
    age int,
    PRIMARY KEY (ID)
);
