1)

2)
for mac:
after installation, 
  
``` bash  
  >> export PATH=${PATH}:/usr/local/mysql/bin/
```
the command above will add mysql PATH to mac so that we can launch mysql using 

``` bash  
  >> mysql -u root -p
```
3) create a database
```
mysql> CREATE DATABASE menagerie;
mysql> create database Lawrence_387;
mysql> USE menagerie
```
Your database needs to be created only once, but you must select it for use each time you begin a mysql session. You can do this by issuing a USE statement as shown in the example. Alternatively, you can select the database on the command line when you invoke mysql. Just specify its name after any connection parameters that you might need to provide. For example:
``` mysql
shell> mysql -h host -u user -p menagerie
Enter password: ********
```

4) create a table in specific database

``` mysql
CREATE TABLE 'FBxUnicorn'.'weekly_rent' (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name CHAR(8) NOT NULL,
    payer CHAR(4) NOT NULL,
    date DATETIME NOT NULL,
    what VARCHAR(255) NOT NULL,
    jiacheng_qu FLOAT,
    xiaozheng_guo FLOAT,
    yedi_wang FLOAT
);
```
``` mysql
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| FBxUnicorn         |
| information_schema |
| Lawrence_387       |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
6 rows in set (0.00 sec)

mysql> use fbxunicorn
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> show tables;
+----------------------+
| Tables_in_fbxunicorn |
+----------------------+
| wk22_may27           |
+----------------------+
1 row in set (0.00 sec)
```

``` mysql
mysql> show columns from weekly_rent;

>> 
+---------------+------------------+------+-----+---------+----------------+
| Field         | Type             | Null | Key | Default | Extra          |
+---------------+------------------+------+-----+---------+----------------+
| id            | int(10) unsigned | NO   | PRI | NULL    | auto_increment |
| name          | char(8)          | NO   |     | NULL    |                |
| payer         | char(4)          | NO   |     | NULL    |                |
| date          | datetime         | NO   |     | NULL    |                |
| what          | varchar(255)     | NO   |     | NULL    |                |
| jiacheng_qu   | float            | YES  |     | NULL    |                |
| xiaozheng_guo | float            | YES  |     | NULL    |                |
| yedi_wang     | float            | YES  |     | NULL    |                |
+---------------+------------------+------+-----+---------+----------------+
8 rows in set (0.00 sec)

```



The first way specifies both the column names and the values to be inserted:
``` mysql
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);
```
If you are adding values for all the columns of the table, you do not need to specify the column names in the SQL query. However, make sure the order of the values is in the same order as the columns in the table. The INSERT INTO syntax would be as follows:
``` mysql
INSERT INTO table_name
VALUES (value1, value2, value3, ...);

```


``` mysql
mysql> show columns from weekly_rent;
+---------------+------------------+------+-----+---------+----------------+
| Field         | Type             | Null | Key | Default | Extra          |
+---------------+------------------+------+-----+---------+----------------+
| id            | int(10) unsigned | NO   | PRI | NULL    | auto_increment |
| what          | varchar(32)      | NO   |     | NULL    |                |
| payer         | varchar(32)      | NO   |     | NULL    |                |
| date          | datetime         | NO   |     | NULL    |                |
| jiacheng_qu   | float            | YES  |     | NULL    |                |
| xiaozheng_guo | float            | YES  |     | NULL    |                |
| yedi_wang     | float            | YES  |     | NULL    |                |
+---------------+------------------+------+-----+---------+----------------+
7 rows in set (0.00 sec)
```
``` mysql
mysql> insert into weekly_rent values(1,'hot wings', 'qu', now(), 0,0,0);
Query OK, 1 row affected (0.00 sec)

mysql> select * from weekly_rent;
+----+-----------+-------+---------------------+-------------+---------------+-----------+
| id | what      | payer | date                | jiacheng_qu | xiaozheng_guo | yedi_wang |
+----+-----------+-------+---------------------+-------------+---------------+-----------+
|  1 | hot wings | qu    | 2019-05-27 22:46:38 |           0 |             0 |         0 |
+----+-----------+-------+---------------------+-------------+---------------+-----------+
1 row in set (0.00 sec)

```

``` mysql
mysql >> insert into weekly_rent values(null,'in n out', 26,'Qu', now(), 0,0,0);
```
``` mysql
mysql> insert into weekly_rent values(null,'hot wings', 44,'Qu', 20190525, 0,0,0);
Query OK, 1 row affected (0.01 sec)

mysql> select * from weekly_rent;
+----+-----------+--------+-------+---------------------+-------------+---------------+-----------+
| id | What      | Amount | Payer | date                | Jiacheng_Qu | Xiaozheng_Guo | Yedi_Wang |
+----+-----------+--------+-------+---------------------+-------------+---------------+-----------+
|  1 | in n out  |     26 | Qu    | 2019-05-27 22:51:10 |           0 |             0 |         0 |
|  2 | hot wings |     44 | Qu    | 2019-05-25 00:00:00 |           0 |             0 |         0 |
+----+-----------+--------+-------+---------------------+-------------+---------------+-----------+
2 rows in set (0.00 sec)

mysql> 

```
