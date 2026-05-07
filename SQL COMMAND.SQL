-- SQL DML commands

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| asmita             |
| ecom               |
| energy_db          |
| information_schema |
| max                |
| mysql              |
| performance_schema |
| sakila             |
| student_management |
| sys                |
| world              |
+--------------------+
11 rows in set (0.06 sec)

mysql> use ecom;
Database changed
mysql> show tables;
+----------------+
| Tables_in_ecom |
+----------------+
| customer       |
| orders         |
| product        |
+----------------+
3 rows in set (0.01 sec)

mysql> desc customer;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| customer_id  | varchar(5)   | NO   | PRI | NULL    |       |
| name         | varchar(10)  | NO   |     | NULL    |       |
| city         | varchar(10)  | NO   |     | NULL    |       |
| email        | varchar(20)  | NO   |     | NULL    |       |
| address      | varchar(100) | NO   |     | NULL    |       |
| phone_number | varchar(10)  | NO   |     | NULL    |       |
| pincode      | int          | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
7 rows in set (0.01 sec)

mysql> select * from customer;
Empty set (0.02 sec)

-- for adding the values into columns we use INSERT command
mysql> insert into customer(customer_id,name,city,email,address,phone_number,pincode)values('C101','Ratan','Mumbai','ratan@gmail.com','Lakshmi sadan Lower parel','7400106203','400051');
Query OK, 1 row affected (0.02 sec)

-- for displaying data we use SELECT command
mysql> select * from customer;
+-------------+-------+--------+-----------------+---------------------------+--------------+---------+
| customer_id | name  | city   | email           | address                   | phone_number | pincode |
+-------------+-------+--------+-----------------+---------------------------+--------------+---------+
| C101        | Ratan | Mumbai | ratan@gmail.com | Lakshmi sadan Lower parel | 7400106203   |  400051 |
+-------------+-------+--------+-----------------+---------------------------+--------------+---------+
1 row in set (0.00 sec)

-- fetching the specific data
mysql> select customer_id,name from customer;
+-------------+-------+
| customer_id | name  |
+-------------+-------+
| C101        | Ratan |
+-------------+-------+
1 row in set (0.00 sec)

mysql> insert into customer values('C102','Asmita','Mumbai','asmi@gmail.com','Government colony','8591030635','400051');
Query OK, 1 row affected (0.06 sec)

mysql> select * from customer;
+-------------+--------+--------+-----------------+---------------------------+--------------+---------+
| customer_id | name   | city   | email           | address                   | phone_number | pincode |
+-------------+--------+--------+-----------------+---------------------------+--------------+---------+
| C101        | Ratan  | Mumbai | ratan@gmail.com | Lakshmi sadan Lower parel | 7400106203   |  400051 |
| C102        | Asmita | Mumbai | asmi@gmail.com  | Government colony         | 8591030635   |  400051 |
+-------------+--------+--------+-----------------+---------------------------+--------------+---------+
2 rows in set (0.00 sec)


-- adding multiple records using INSERT
mysql> insert into customer values('C103','Ashwini','Mumbai','ashu@gmail.com','Government colony','9987528508','400051'),('C104','Avinash','Mumbai','avinash@gmail.com','Government colony','9892989318','400051');
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from customer;
+-------------+---------+--------+-------------------+---------------------------+--------------+---------+
| customer_id | name    | city   | email             | address                   | phone_number | pincode |
+-------------+---------+--------+-------------------+---------------------------+--------------+---------+
| C101        | Ratan   | Mumbai | ratan@gmail.com   | Lakshmi sadan Lower parel | 7400106203   |  400051 |
| C102        | Asmita  | Mumbai | asmi@gmail.com    | Government colony         | 8591030635   |  400051 |
| C103        | Ashwini | Mumbai | ashu@gmail.com    | Government colony         | 9987528508   |  400051 |
| C104        | Avinash | Mumbai | avinash@gmail.com | Government colony         | 9892989318   |  400051 |
+-------------+---------+--------+-------------------+---------------------------+--------------+---------+
4 rows in set (0.00 sec)
 
-- using ALTER command we can modify one record
mysql> alter table customer modify email varchar(30) not null;
Query OK, 0 rows affected (0.11 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc customer;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| customer_id  | varchar(5)   | NO   | PRI | NULL    |       |
| name         | varchar(10)  | NO   |     | NULL    |       |
| city         | varchar(10)  | NO   |     | NULL    |       |
| email        | varchar(30)  | NO   |     | NULL    |       |
| address      | varchar(100) | NO   |     | NULL    |       |
| phone_number | varchar(10)  | NO   |     | NULL    |       |
| pincode      | int          | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

-- adding new column in table
mysql> alter table customer add bill double not null;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc customer;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| customer_id  | varchar(5)   | NO   | PRI | NULL    |       |
| name         | varchar(10)  | NO   |     | NULL    |       |
| city         | varchar(10)  | NO   |     | NULL    |       |
| email        | varchar(30)  | NO   |     | NULL    |       |
| address      | varchar(100) | NO   |     | NULL    |       |
| phone_number | varchar(10)  | NO   |     | NULL    |       |
| pincode      | int          | NO   |     | NULL    |       |
| bill         | double       | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
8 rows in set (0.00 sec)

-- adding multiple column using ALTER
mysql> alter table customer add state varchar(20) not null, add country varchar(20) not null;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc customer;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| customer_id  | varchar(5)   | NO   | PRI | NULL    |       |
| name         | varchar(10)  | NO   |     | NULL    |       |
| city         | varchar(10)  | NO   |     | NULL    |       |
| email        | varchar(30)  | NO   |     | NULL    |       |
| address      | varchar(100) | NO   |     | NULL    |       |
| phone_number | varchar(10)  | NO   |     | NULL    |       |
| pincode      | int          | NO   |     | NULL    |       |
| bill         | double       | NO   |     | NULL    |       |
| state        | varchar(20)  | NO   |     | NULL    |       |
| country      | varchar(20)  | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
10 rows in set (0.00 sec)

-- changing column name of existing column using ALTER
mysql> alter table customer change column name customer_name varchar(10) not null;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc customer;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| customer_id   | varchar(5)   | NO   | PRI | NULL    |       |
| customer_name | varchar(10)  | NO   |     | NULL    |       |
| city          | varchar(10)  | NO   |     | NULL    |       |
| email         | varchar(30)  | NO   |     | NULL    |       |
| address       | varchar(100) | NO   |     | NULL    |       |
| phone_number  | varchar(10)  | NO   |     | NULL    |       |
| pincode       | int          | NO   |     | NULL    |       |
| bill          | double       | NO   |     | NULL    |       |
| state         | varchar(20)  | NO   |     | NULL    |       |
| country       | varchar(20)  | NO   |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
10 rows in set (0.00 sec)

 

-- DELETE COMMAND used for deleting single or multiple records
mysql> delete from customer where customer_id = 'C103';
Query OK, 1 row affected (0.01 sec)

mysql> select * from customer;
+-------------+---------------+--------+-------------------+---------------------------+--------------+---------+------+-------+---------+
| customer_id | customer_name | city   | email             | address                   | phone_number | pincode | bill | state | country |
+-------------+---------------+--------+-------------------+---------------------------+--------------+---------+------+-------+---------+
| C101        | Ratan         | Mumbai | ratan@gmail.com   | Lakshmi sadan Lower parel | 7400106203   |  400051 |    0 |       |         |
| C102        | Asmita        | Mumbai | asmi@gmail.com    | Government colony         | 8591030635   |  400051 |    0 |       |         |
| C104        | Avinash       | Mumbai | avinash@gmail.com | Government colony         | 9892989318   |  400051 |    0 |       |         |
+-------------+---------------+--------+-------------------+---------------------------+--------------+---------+------+-------+---------+
3 rows in set (0.00 sec)


mysql> create table employee(id int primary key,name varchar(20));
Query OK, 0 rows affected (0.04 sec)

mysql> insert into employee values(1,'Asmita');
Query OK, 1 row affected (0.01 sec)

mysql> select * form employee;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'form employee' at line 1
mysql> select * from employee;
+----+--------+
| id | name   |
+----+--------+
|  1 | Asmita |
+----+--------+
1 row in set (0.00 sec)

-- TRUNCATE COMMAND used to delete all records from table but remains structure as it is
mysql> truncate table employee;
Query OK, 0 rows affected (0.05 sec)

mysql> desc employee;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int         | NO   | PRI | NULL    |       |
| name  | varchar(20) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

--DROP COMMAND- used to deleting whole table as well as its structure
mysql> drop table orders;
Query OK, 0 rows affected (0.03 sec)

mysql> desc orders;
ERROR 1146 (42S02): Table 'ecom.orders' doesn't exist

mysql> create table demo(id varchar(5) not null primary key, name varchar(20) not null);
Query OK, 0 rows affected (0.010 sec)

mysql> desc demo;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | varchar(5)  | NO   | PRI | NULL    |       |
| name  | varchar(20) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.003 sec)

-- using ALTER command dropping the primary key
mysql> alter table demo drop primary key;
Query OK, 0 rows affected (0.019 sec)
Records: 0  Duplicates: 0  Warnings: 0
