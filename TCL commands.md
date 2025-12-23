# TCL (Transaction Control Language) Commands:


TCL commands in MySQL are used to manage transactions within a database.
Transaction: sequences of one or more SQL statements that are executed as a single unit of work.
TCL helps to control the changes made to the database during these transactions

TCL commands in MySQL:

COMMIT:
******
This command is used to permanently save changes made during the current transaction.
Once a transaction is committed, the changes become permanent and cannot be rolled back.

-- SQL statements
COMMIT;

ROLLBACK:
********
This command is used to undo changes made during the current transaction and
return the database to the state it was in before the transaction began.

-- SQL statements
ROLLBACK;

Note:
set autocommit = 0;  -- by default commit is true, we have to set it to false

SAVEPOINT and ROLLBACK TO SAVEPOINT:
***********************************
A savepoint is a point within a transaction to which you can later roll back.
This can be useful when we want to undo part of a transaction
