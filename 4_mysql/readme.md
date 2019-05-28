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
USE menagerie
```
Your database needs to be created only once, but you must select it for use each time you begin a mysql session. You can do this by issuing a USE statement as shown in the example. Alternatively, you can select the database on the command line when you invoke mysql. Just specify its name after any connection parameters that you might need to provide. For example:
```
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
