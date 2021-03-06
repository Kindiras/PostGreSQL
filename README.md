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
  - `TIME` contains only time
  - `DATE` a day/month/year
  - `TIMESTAMP` combination of date and time
  - `TIMESTAMPTZ` contains date,time,and timezone 
  
 #### `TABLE CONSTRAINT` :
 ##### Consraints: These are the rules enforced on data columns on table which ensure the accuracy and reliablity of the data in the database
  + Columns Constraints => applied the constraints to a column to adhere certain conditions
  + Table Constraints => applied to the entire table rather than to an individual columns
 ##### Most common constraints
   - `PRIMARY KEY` a column whose values is uniquely identify each row
   - `COMPOSITE KEY` two or more columns acting together as a primary key
   - `FOREIGN KEY` a column in one table that references a column in another table
   - `UNIQUE KEY` a column whose values must be unique in each row
   - `NOT NULL` the column must have a value in each row
   - `CHECK` the column values must meet some criteria
   - `EXCLUSION` ensures that if any two rows are compared on the specified columns or expression using the specified operator
   - `REFERENCES` to constrain the value stored in the column that must exist in a column in another table

##### `COMMANDS in SQL`:
`SELECT`: [SELECT](select.sql) is used to select the table & * is used to select all columns from a table
  + [`SELECT DISTINCT`](SelectDistinct.sql)-> used to figure out how many distinct values are in column. Use `()` for column. 
  + [`SELECT COUNT`](SelectCount.sql) -> To count how many rows in a column. Use `()` for column. 
  + [`SELECT COUNT(DISTINCT(column name))`](SelectCountDistinct.sql)-> how many distinct values in column
  + [`SELECT WHERE`](SelectWhere.sql) -> appears immediately after `FROM` clause of SELECT statement and conditions are used

`ORDER BY`: It is used to sort rows based on a column value, in either ascending or desscending order
 
 ```diff
 ! Syntax:
 ```
   +   `SELECT` column_1,Column_2 `FROM` table `ORDER BY` column_1 `ASC/DESC`
   +   [ORDER BY](OrderBy.sql) comes towards the end of the query.
  
[`LIMIT`](Limit.sql): It allows to limit the number of rows returned for a query. It goes at the very end of query request.

`BETWEEN`: Used to match a value against a range of values.
```diff
@@    value `BETWEEN` low `AND` high @@
+     value >= low `AND` value <= high
```    
 + [`BETWEEN`](Between.sql) can be combined with `NOT` operator
```diff
+    value `NOT BETWEEN` low `AND` high
@@   value <low `OR` value > high @@
```  

`IN`: Use to check multiple possible value option or use as IN operator
 
 ```diff
 ! Syntax:
 ```
   + value `IN` (option1, optio2,...,option_n)
   + `SELECT` color `FROM` able `WHERE` color [`IN`](In.sql) ('red','blue')
   + `SELECT` color `FROM` able `WHERE` color `NOT' `IN` ('red','blue')

`LIKE` & [`ILIKE`](LikeIlike.sql): Like is case-sensetive and ILIKE is not. 
   + This operator allow us to perform pattern matching against string data with use of wildcard character
   
   + `%` => Matches any sequency of characters
```diff
-  All names begin with an 'A' => `WHERE` name `LIKE` 'A%'
-  All names end with an 'a' => `WHERE` name `LIKE` '%a'
```
   + `_` => Matches any single character
```diff
- `WHERE` value `LIKE` 'Version#__' etc for Version#B7 
```
###### [COMMON Aggregate Function](AggregateFunction.sql): The call happens only in `SELECT` clause or the `HAVING` clause
```diff
+ AVG() -> Use ROUND() for specify precision after the decimal
+ COUNT()
+ MAX()
+ MIN()
+ SUM()
```

##### `GROUP BY`: It allows us to aggregate the data. It comes after `FROM` statement or right after `WHERE` statement
 ```diff
 # Syntax:
 ```
  + `SELECT` category_col, AGG(data_col) `FROM` table `GROUP BY` category_col
```diff
- In the `SELECT statement, column must either have an aggregate function or be in the `GROUP BY` call
```
  + [GROUP BY](GroupBy.sql) and [GROUPBYDATE](GroupByDate.sql) could give more understanding

##### [`HAVING`](Having.sql): It allows us to filter after an aggregation has already taken place, we can't use `WHERE` to filter based off of aggregate result since it happens ater a `WHERE` is executed
```diff
 # Syntax:
+ `SELECT` company, `SUM`(sales) `FROM` finance_table
+ `WHERE company != 'Google'
+ `GROUP BY` company
+ `HAVING` `SUM`(sales) > 1000
```

#### [`JOINS`](JoinExample.sql): It is an operation that allows to combine multiple tables together 
 + [`INNER JOIN`](InnerJoin.sql): It will return only records from both tables that match based on a condition![INNERJOIN](https://user-images.githubusercontent.com/42945839/157488347-3cf8fa90-3987-4619-9908-bf20d40a97bd.png)
 + [`FULL OUTER JOIN`](FullOuterJoin.sql): It returns the records from both the table 
   ![FULLOUTERJOIN](https://user-images.githubusercontent.com/42945839/157490842-5acd0566-fa08-402a-92da-77f8a197b665.png)
 + [`LEFT OUTER JOIN`](LeftOuterJoin.sql): It returns the results from the first table and records from the second table that match on specific condition
   ![LEFTOUTERJOIN](https://user-images.githubusercontent.com/42945839/157502051-8a320a6f-75ad-4874-b177-fd83e2dc3f69.png)
 + `RIGHT OUTER JOIN`: It returns the results of the second table and records from the first table only if they match records in the second based on a condtion
    It is the reverse of the order of table in `LEFT OUTER JOIN`
      
#### `UNION`: it is used to combine the result-set of two or more SELECT statements, or it serves to directly concatenate two results together, essentially pasting               them together  
+ Syntax:
```diff
+    `SELECT` column_names FROM table 1
+      `UNION`
+     SELECT column_names FROM table 2
```      

###### Timestamp & Extract:
 + [EXTRACT()](Extract.sql): Allows to extract Year
   - YEAR
   - MONTH
   - DAY
   - WEEK
   - QUARTER
  
 + AGE(): Calculates and returns the current age given a timestamp
 + Useage:
   - AGE(data_col)
 + [TO_CHAR()](AgeTo_Char.sql): General function to convert data types to text
 + Useage:
   - TO_CHAR(data_col,'mm-dd-yyyy'), click [here](https://www.postgresql.org/docs/12/functions-formatting.html) for format

###### MathOperation in SQl [example](Mathoperation.sql)
### Creating table in SQL:
`CREATE`:
```diff
+ Syntax
   `CREATE TABLE` table_name(column_name TYPE column_constraints, column_name TYPE column_constraint,
            table_constraint table_constraint)`INHERITS` existing_table_name;
```
  - See these [example1](createtable.sql),[example2](job.sql), and [example3](account_job.sql) together for better understanding

`INSERT`: Allows to add in rows to a table
```diff
+ Syntax
   `INSERT INTO` table(column1,column2,column3,...)
   `VALUES`
   (value1, value2,value3,...)
   (value1,value2,value3,...)
   => Inserting from another table
   `INSERT INTO` table(column1,column2,column3,...)
    `SELECT` column1,column1,.... FROM another_table
    `WHERE` condition;
```
 - See these example [example1](Insert.sql), [example2](Insert2.sql)

`UPDATE`: Allows for changing of values of the columns in a table
```diff
+ Syntax
+ UPDATE table
SET column1 = value1,
    column2 = value2,...
    WHERE
    conditon;
```
- [Exampel](Update.sql) and [example2](Update1.sql)

`DELETE': [Example](Delete.sql)

`ALTER`: allows for adding, dropping, or renaming columns, changing a column's data type, set `DEFAULT` values for a column,rename table, add `CHECK` constraints
```diff
! Syntax
! ALTER TABLE table_name action
```
Example [ALTER](Alter.sql) & [Drop](Drop.sql)

###### [`CHECK'](Check.sql) : 
```diff
+ Syntax:
+ CREATE TABLE example(ex_id SERIAL PRIMARY KEY, age SMALLINT CHECK (age > 21), parent_age SMALLINT CHECK (parent_age > age)
+ );
```
```diff
+ green
- red
! text in orange
# text in gray
@@ text in purple (and bold)@@
```
