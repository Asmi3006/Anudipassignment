
-- Lab 1: Database Schema: Consider a simple database with one tables: BankAccount BankAccount

mysql> use BankAccount;
Database changed

--Table: ● Columns: account_id (Primary Key), account_holder_name, account_balance
mysql> create table BankAccount(account_id int primary key not null,account_holder_name varchar(50),account_balance double);
Query OK, 0 rows affected (0.04 sec)

 --Task 1: Insert Data Write an SQL INSERT statement to insert data into the BankAccount table
mysql> insert into BankAccount values(1,'Asmmita',50000),(2,'Ratan',80000),(3,'Ashwini',40000),(4,'Anita',60000),(5,'Avinash',90000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from BankAccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|          1 | Asmmita             |           50000 |
|          2 | Ratan               |           80000 |
|          3 | Ashwini             |           40000 |
|          4 | Anita               |           60000 |
|          5 | Avinash             |           90000 |
+------------+---------------------+-----------------+
5 rows in set (0.00 sec)

-- Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance of all account holders from the BankAccount table. 
mysql> select account_holder_name,account_balance from BankAccount;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Asmmita             |           50000 |
| Ratan               |           80000 |
| Ashwini             |           40000 |
| Anita               |           60000 |
| Avinash             |           90000 |
+---------------------+-----------------+
5 rows in set (0.00 sec)

--Task 3: Filtering Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance where the account_balance is more than 30,000.

mysql> select account_holder_name,account_balance from BankAccount where account_balance>30000;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Asmmita             |           50000 |
| Ratan               |           80000 |
| Ashwini             |           40000 |
| Anita               |           60000 |
| Avinash             |           90000 |
+---------------------+-----------------+
5 rows in set (0.01 sec)

--Task 4: Updating Data Write an SQL UPDATE statement to change the account_balance of the account holder whose ID is 101. 
mysql> update BankAccount set account_balance=50000 where account_id=1;
Query OK, 0 rows affected (0.02 sec)
Rows matched: 1  Changed: 0  Warnings: 0

mysql> select * from BankAccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|          1 | Asmmita             |           50000 |
|          2 | Ratan               |           80000 |
|          3 | Ashwini             |           40000 |
|          4 | Anita               |           60000 |
|          5 | Avinash             |           90000 |
+------------+---------------------+-----------------+
5 rows in set (0.00 sec)

mysql>

