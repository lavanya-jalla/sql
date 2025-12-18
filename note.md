# SQL: strucutred querey language . It is stroing the data in RDMS relation in table 
# mysql: Database mang to do this we need sql commands
mysql is a dbms software based on sql

TO run sql:
Mysql community server

Xampp
Wamp
LAMP

# commands
select version();
show databases;
create database student;
use student;
select database();
desc student;

# Datatypes: to represnt data 
=>int : upto 11 without decimal
=>shortint : upto 5 without decimal
=>float or decimal: floating values
=>date:yyyy-mm-dd
=>time: hh:mm:ss
=>varchar:numbers and charcters(ex: lava23)
=>char:single characters
note: varchar,char and time should be enclosed by(' ') or (" ") 


# DDL: data defination language-defines data,structure
->create
->alter
->drop- entire structure deletes
->delete-only the data deletes not the structure
@ This ddl have "table" keyword

create table student;
alter table student;
drop table student;
truncate table student;

# DML: data manuplation lang
->select
->insert
->update
->delete

# DCL: data control lan'
->grant
->revoke

# TCL: transaction control lang
->commit
->rollback
->savepoint

# Query command(DQL): retrive data
->select * from databasename;

With these command we can do CRUD operations on table
