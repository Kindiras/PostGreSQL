#### `INSTALLATION OF POSTGRESQL`
+ Download [PostgreSQl](https://www.postgresql.org/) and follow the steps. 
+ Download [pgAdmin](https://www.pgadmin.org/) and follow the steps. 
#### `SQL Cheat sheet` [SQLCHEATSHEET](SQL-cheat-sheet.pdf) from Sql tutorial [SQL](https://www.sqltutorial.org/wp-content/uploads/2016/04/SQL-cheat-sheet.pdf) and [cheatsheet](Screen+Shot+2016-04-17+at+12.22.49+PM.png) from udemy.
#### `SQL Notes from udemy`: [Notes](SQLNotes.pdf)
#### `PostgreSQL-Sample-Database` [Sample](PostgreSQL-Sample-Database.png)
#### `Database`:
   - it is an organized collection of data. 
#### `Database Management System (DBMS)`
  - Special software program that helps users create and maintain a database.
#### `Two types of Database`  
   - Relational Databases (`SQL`) => has rows and columns and a unique key identifier in each row.    
   - Non-Relational (`noSQL`) => JSON, XML, etc.
### `Relational Database:`
+ it links data in one table to related data in another table. 
     - A `table` is a collection of data organized into rows and columns.
     - A `column` is property of a data table which stores and contains name or label or data type. 
     - A `row` is a single record in a table. 
#### `Relational Database Management System (RDBMS)` 
 + it helps users to create and maintain a relational database => mySQL,Oracle, postgreSQL, etc.
#### `Structured Query Language (SQL)`:
 + is a programming language designed to manage data stored in a relational database management system (RDBMS). It is managed by the American National Standards Institute [ANSI]  (https://www.ansi.org/).

#### `SQL is a hybrid of different types of languages in one`
 - `Data Query Language (DQL)`: used to get information that is already stored there. 
 - `Data Definition Language (DDL)` : Statements that define the database structure `CREATE`, `ALTER`,`DROP`.
 - `Data Control Language (DCL)` : Used to controlling access to the data in the database. 
 - `Data Manipulation Language (DML)`: Statements that manipulate data `SELECT`,`INSERT`,`UPDATE`, `DELETE`. 
 - `Transaction Control Language (TCL)`: Statements controlling the execution of the queries. (`Transaction` is a group of SQL statements as a single unit).
#### `Queries`
 + A query is a set of instructions given to the RDBMS.

#### `Column Datatype`:
  - `VARCHAR` text data of variable length which can hold any type of character data.
  - `INTEGER` 32-bit signed whole number
  - `SMALLINT`16-bit signed whole number
  - `NUMBER(n,d)` decimal numbers with significant figure 
  - `FLOAT` floating point numbers
  - `DATE` a day/month/year
  - `TIMESTAMP` combination of date and time 
  
 #### `TABLE CONSTRAINT` :
 ##### six common constraints
   - `PRIMARY KEY` a column whose values is uniquely identify each row
   - `COMPOSITE KEY` two or more columns acting together as a primary key
   - `FOREIGN KEY` a column in one table that references a column in another table
   - `UNIQUE KEY` a column whose values must be unique in each row
   - `NOT NULL` the column must have a value in each row
   - `CHECK` the column values must meet some criteria
  
  #### `JOINS`

#### `COMMAND in SQL`:
```diff
- SELECT 
```
  + [SELECT](select.sql) is used to select the table & * is used to select all columns from a table
```diff
+    SELECT DISTINCT
```
  + [SELECT DISTINCT](SelectDistinct.sql)-> used to figure out how many distinct values are in column. Example shows how many distinct rates. Use `()` for column. 
```diff
+   SELECT COUNT
```
  + [SELECT COUNT](SelectCount.sql) -> To count how many rows in a column. Use `()` for column. 
```diff
+     SELECT COUNT(DISTINCT(column name)) 
```
  + [SELECT COUNT(DISTINCT(column name))]()-> how many distinct values in column

```diff

! text in orange
# text in gray
@@ text in purple (and bold)@@
```
