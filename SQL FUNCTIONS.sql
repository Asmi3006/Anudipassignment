-- SQL FUNCTIONS

mysql> use ecom;
Database changed

mysql> insert into products values('P1','Laptop','Electronics',40000,60000,100),('P2','Phone','Electronics',50000,70000,70),('P3','Chair','Furniture',7000,9000,15),('P4','Sofa','Furniture',20000,30000,60),('P5','Desktop','Electronics',50000,60000,40);
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from Products;
+------------+--------------+-------------+---------------+----------------+-------+
| product_id | product_name | category    | selling_price | original_price | stock |
+------------+--------------+-------------+---------------+----------------+-------+
| P1         | Laptop       | Electronics |         40000 |          60000 |   100 |
| P2         | Phone        | Electronics |         50000 |          70000 |    70 |
| P3         | Chair        | Furniture   |          7000 |           9000 |    15 |
| P4         | Sofa         | Furniture   |         20000 |          30000 |    60 |
| P5         | Desktop      | Electronics |         50000 |          60000 |    40 |
+------------+--------------+-------------+---------------+----------------+-------+
5 rows in set (0.00 sec)

-- SUM 
mysql> select SUM(selling_price) from Products;
+--------------------+
| SUM(selling_price) |
+--------------------+
|             167000 |
+--------------------+
1 row in set (0.00 sec)

--AVERAGE
mysql> select AVG(selling_price) from Products;
+--------------------+
| AVG(selling_price) |
+--------------------+
|              33400 |
+--------------------+
1 row in set (0.00 sec)

-- COUNT
mysql> select COUNT(*) from Products;
+----------+
| COUNT(*) |
+----------+
|        5 |
+----------+
1 row in set (0.01 sec)

--MAXIMUM
mysql> select MAX(stock) from Products;
+------------+
| MAX(stock) |
+------------+
|        100 |
+------------+
1 row in set (0.01 sec)

-- MINIMUM
mysql> select MIN(stock) from Products;
+------------+
| MIN(stock) |
+------------+
|         15 |
+------------+
1 row in set (0.00 sec)

-- ORDER BY
mysql> select * from products ORDER BY stock;
+------------+--------------+-------------+---------------+----------------+-------+
| product_id | product_name | category    | selling_price | original_price | stock |
+------------+--------------+-------------+---------------+----------------+-------+
| P3         | Chair        | Furniture   |          7000 |           9000 |    15 |
| P5         | Desktop      | Electronics |         50000 |          60000 |    40 |
| P4         | Sofa         | Furniture   |         20000 |          30000 |    60 |
| P2         | Phone        | Electronics |         50000 |          70000 |    70 |
| P1         | Laptop       | Electronics |         40000 |          60000 |   100 |
+------------+--------------+-------------+---------------+----------------+-------+
5 rows in set (0.00 sec)

-- DECENDING ORDER
mysql> select * from products ORDER BY stock DESC;
+------------+--------------+-------------+---------------+----------------+-------+
| product_id | product_name | category    | selling_price | original_price | stock |
+------------+--------------+-------------+---------------+----------------+-------+
| P1         | Laptop       | Electronics |         40000 |          60000 |   100 |
| P2         | Phone        | Electronics |         50000 |          70000 |    70 |
| P4         | Sofa         | Furniture   |         20000 |          30000 |    60 |
| P5         | Desktop      | Electronics |         50000 |          60000 |    40 |
| P3         | Chair        | Furniture   |          7000 |           9000 |    15 |
+------------+--------------+-------------+---------------+----------------+-------+
5 rows in set (0.00 sec)

-- LIMIT
mysql> select * from products ORDER BY stock DESC LIMIT 3;
+------------+--------------+-------------+---------------+----------------+-------+
| product_id | product_name | category    | selling_price | original_price | stock |
+------------+--------------+-------------+---------------+----------------+-------+
| P1         | Laptop       | Electronics |         40000 |          60000 |   100 |
| P2         | Phone        | Electronics |         50000 |          70000 |    70 |
| P4         | Sofa         | Furniture   |         20000 |          30000 |    60 |
+------------+--------------+-------------+---------------+----------------+-------+
3 rows in set (0.00 sec)

mysql> insert into Employee values('E1','Asmita','HR',40000),('E2','Ratan','IT',60000),('E3','Ashwini','HR',4500),('E4','Anita','Finance',5000),('E5','Avinash','IT',80000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from  Employee;
+--------+----------+------------+--------+
| emp_id | emp_name | department | salary |
+--------+----------+------------+--------+
| E1     | Asmita   | HR         |  40000 |
| E2     | Ratan    | IT         |  60000 |
| E3     | Ashwini  | HR         |   4500 |
| E4     | Anita    | Finance    |   5000 |
| E5     | Avinash  | IT         |  80000 |
+--------+----------+------------+--------+
5 rows in set (0.00 sec)

-- GROUP BY & COUNT
mysql> select department, COUNT(*) AS TOTAL_employees FROM Employee GROUP BY department;
+------------+-----------------+
| department | TOTAL_employees |
+------------+-----------------+
| HR         |               2 |
| IT         |               2 |
| Finance    |               1 |
+------------+-----------------+
3 rows in set (0.00 sec)

-- GROUPBY and SUM
mysql> select department, SUM(salary) AS TOTAL_salary FROM Employee GROUP BY department;
+------------+--------------+
| department | TOTAL_salary |
+------------+--------------+
| HR         |        44500 |
| IT         |       140000 |
| Finance    |         5000 |
+------------+--------------+
3 rows in set (0.00 sec)

-- GROUP BY & AVERAGE
mysql> select department, AVG(salary) AS AVERAGE_salary FROM Employee GROUP BY department;
+------------+----------------+
| department | AVERAGE_salary |
+------------+----------------+
| HR         |     22250.0000 |
| IT         |     70000.0000 |
| Finance    |      5000.0000 |
+------------+----------------+
3 rows in set (0.00 sec)

mysql> select department, COUNT(salary) AS TOTAL_salary FROM Employee GROUP BY department,salary;
+------------+--------------+
| department | TOTAL_salary |
+------------+--------------+
| HR         |            1 |
| IT         |            1 |
| HR         |            1 |
| Finance    |            1 |
| IT         |            1 |
+------------+--------------+
5 rows in set (0.00 sec)

mysql> select department,salary,COUNT(*) FROM Employee GROUP BY department,salary;
+------------+--------+----------+
| department | salary | COUNT(*) |
+------------+--------+----------+
| HR         |  40000 |        1 |
| IT         |  60000 |        1 |
| HR         |   4500 |        1 |
| Finance    |   5000 |        1 |
| IT         |  80000 |        1 |
+------------+--------+----------+
5 rows in set (0.00 sec)

 
mysql> select * from  Employee;
+--------+----------+------------+--------+
| emp_id | emp_name | department | salary |
+--------+----------+------------+--------+
| E1     | Asmita   | HR         |  40000 |
| E2     | Ratan    | IT         |  60000 |
| E3     | Ashwini  | HR         |   4500 |
| E4     | Anita    | Finance    |   5000 |
| E5     | Avinash  | IT         |  80000 |
+--------+----------+------------+--------+
5 rows in set (0.00 sec)

mysql> select department, COUNT(*) AS Total_empployee FROM Employee GROUP BY department HAVING COUNT(*) > 1;
+------------+-----------------+
| department | Total_empployee |
+------------+-----------------+
| HR         |               2 |
| IT         |               2 |
+------------+-----------------+
2 rows in set (0.00 sec)

mysql> select department, SUM(salary) AS Total_salary FROM Employee GROUP BY department HAVING SUM(salary) > 8000;
+------------+--------------+
| department | Total_salary |
+------------+--------------+
| HR         |        44500 |
| IT         |       140000 |
+------------+--------------+
2 rows in set (0.00 sec)

mysql> select department, AVG(salary) AS AVERAGE_salary FROM Employee GROUP BY department HAVING AVG(salary) > 5000;
+------------+----------------+
| department | AVERAGE_salary |
+------------+----------------+
| HR         |     22250.0000 |
| IT         |     70000.0000 |
+------------+----------------+
2 rows in set (0.00 sec)