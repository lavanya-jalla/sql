# Data Control Language

-> DCL commands are used to control access to data within the database

-> GRANT: Used to provide specific privileges to users or roles.
It allows us to grant various levels of access to databases, tables, or even specific columns within tables.
> GRANT ALL PRIVILEGES ON dbname.* TO 'username'@'localhost';

-> REVOKE: Opposite of the GRANT command.
It is used to remove or revoke privileges that have been previously granted to users or roles.
> REVOKE DELETE ON *.* FROM 'username'@'localhost';

CREATE USER -> Used to create new user accounts in the MySQL system.
This command sets up the basic login credentials for users.
-> To create a new user, use the CREATE USER command
CREATE USER 'username'@'localhost' IDENTIFIED BY 'password';

Examples:
> create user kevin@localhost identified by 'password'
> grant all on *.* to kevin@localhost with grant option;
> flush privileges
> grant all on *.* to kevin@localhost with grant option;

> GRANT SELECT, INSERT ON mydb.* TO 'username'@'localhost';
> REVOKE DELETE ON mydb.* FROM 'username'@'localhost';

DROP USER: Allows us to delete a user account and remove their access from the MySQL system.
> DROP USER 'unwanteduser'@'localhost';

ALTER USER: Enables us to modify user account properties, such as changing passwords or restricting login locations.
> ALTER USER 'username'@'localhost' IDENTIFIED BY 'newpassword';

SET PASSWORDS;
SHOW GRANTS;
SHOW USERS=>mysql.users;

# practice

 select user();

select Host,User from user;

 show grants();

 create user lava@localhost identifed by 'oops';
 
 show grants for lava@localhost;

 revoke update on *.* from lava@localhost;

 mysql -u lava -p

 DROP USER  lava@localhost ;

