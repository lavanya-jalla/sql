# Referential Actions in MySQL:
→ Referential actions are rules defined in MySQL that dictate how changes to data in one table (the "referenced" or "parent" table) should affect related data in another table (the "referencing" or "child" table) that has a foreign key relationship.

[CONSTRAINT [name]] FOREIGN KEY (col_name, ...)
    REFERENCES tbl_name (col_name, ...)
    [ON DELETE reference_option]
    [ON UPDATE reference_option]

RESTRICT | CASCADE | SET NULL | NO ACTION | SET DEFAULT


"RESTRICT": Prevents the deletion or update of a parent row if there are dependent child rows referencing it.

"CASCADE": Automatically deletes or updates the dependent child rows when the corresponding parent row is deleted or updated.

"SET NULL": Sets the foreign key columns in the child rows to NULL when the parent row is deleted or updated.

"NO ACTION": Similar to RESTRICT, it prevents the deletion or update of a parent row if there are dependent child rows, but the database system may handle it differently.

"SET DEFAULT": Sets the foreign key columns in the child rows to their default values when the parent row is deleted or updated.

# practice

 ALTER TABLE orders
    -> DROP FOREIGN KEY FK_PersonOrder;

 ALTER TABLE orders
    -> ADD CONSTRAINT FK_PersonOrder
    -> FOREIGN KEY (id)
    -> REFERENCES person(id)
    -> ON DELETE CASCADE;

 SHOW CREATE TABLE orders;

 MariaDB [student]> SHOW CREATE TABLE orders;
+--------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Table  | Create Table                                                                                                                                                                                                                                                                                                                                                              |
+--------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| orders | CREATE TABLE `orders` (
  `ord_id` int(11) NOT NULL AUTO_INCREMENT,
  `ord_num` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ord_id`),
  KEY `FK_PersonOrder` (`id`),
  CONSTRAINT `FK_PersonOrder` FOREIGN KEY (`id`) REFERENCES `person` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci |
+--------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.002 sec)

 ALTER TABLE orders
    -> ADD CONSTRAINT FK_PersonOrder
    -> FOREIGN KEY (id)
    -> REFERENCES person(id)
    -> ON DELETE RESTRICT;


 ALTER TABLE orders
    -> ADD CONSTRAINT FK_PersonOrder
    -> FOREIGN KEY (id)
    -> REFERENCES person(id)
    -> ON DELETE NO ACTION;

 ALTER TABLE orders
    -> ADD CONSTRAINT FK_PersonOrder
    -> FOREIGN KEY (id)
    -> REFERENCES person(id)
    -> ON DELETE SET NULL;

 ALTER TABLE orders
    -> ADD CONSTRAINT FK_PersonOrder
    -> FOREIGN KEY (id)
    -> REFERENCES person(id)
    -> ON DELETE DEFAULT;

