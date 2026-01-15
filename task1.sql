mysql> CREATE DATABASE intern_training_db;
Query OK, 1 row affected (0.08 sec)

mysql> USE TABLE students(
ERROR 1049 (42000): Unknown database 'table'
mysql> CREATE TABLE students {
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '{
)' at line 1
mysql> CREATE TABLE students (
    -> id INT PRIMARY KEY AUTO_INCREMENT,
    -> name VARCHAR(100),
    -> email VARCHAR(100),
    -> age INT
    -> );
ERROR 1046 (3D000): No database selected
mysql> USE intern_training_db;
Database changed
mysql> CREATE TABLE students (
    -> id INT PRIMARY KEY AUTO_INCREMENT,
    -> name VARCHAR(100),
    -> email VARCHAR(100),
    -> age INT
    -> );
Query OK, 0 rows affected (0.08 sec)

mysql> INSERT INTO students (name, email, age) VALUES
    -> ('Rahul Sharma', 'rahul@gmail.com', 21),
    -> ('Priya Verma', 'priya@gmail.com', 22),
    -> ('Amit Kumar', 'amit@gmail.com', 20),
    -> ('Sneha Reddy', 'sneha@gmail.com', 23),
    -> ('Arjun Patel', 'arjun@gmail.com', 21),
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 6
mysql> INSERT INTO students (name, email, age) VALUES
    -> ('Rahul Sharma', 'rahul@gmail.com', 21),
    -> ('Priya Verma', 'priya@gmail.com', 22),
    -> ('Amit Kumar', 'amit@gmail.com', 20),
    -> ('Sneha Reddy', 'sneha@gmail.com', 23),
    -> ('Arjun Patel', 'arjun@gmail.com', 21),
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ')' at line 7
mysql> INSERT INTO students (name, email, age) VALUES
    -> ('Rahul Sharma', 'rahul@gmail.com', 21),
    -> ('Priya Verma', 'priya@gmail.com', 22),
    -> ('Amit Kumar', 'amit@gmail.com', 20),
    -> ('Sneha Reddy', 'sneha@gmail.com', 23),
    -> ('Arjun Patel', 'arjun@gmail.com', 21);
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM students;
+----+--------------+-----------------+------+
| id | name         | email           | age  |
+----+--------------+-----------------+------+
|  1 | Rahul Sharma | rahul@gmail.com |   21 |
|  2 | Priya Verma  | priya@gmail.com |   22 |
|  3 | Amit Kumar   | amit@gmail.com  |   20 |
|  4 | Sneha Reddy  | sneha@gmail.com |   23 |
|  5 | Arjun Patel  | arjun@gmail.com |   21 |
+----+--------------+-----------------+------+
5 rows in set (0.00 sec)

mysql> SELECT name, email FROM students;
+--------------+-----------------+
| name         | email           |
+--------------+-----------------+
| Rahul Sharma | rahul@gmail.com |
| Priya Verma  | priya@gmail.com |
| Amit Kumar   | amit@gmail.com  |
| Sneha Reddy  | sneha@gmail.com |
| Arjun Patel  | arjun@gmail.com |
+--------------+-----------------+
5 rows in set (0.00 sec)