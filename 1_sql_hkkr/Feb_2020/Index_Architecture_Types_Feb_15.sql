How many index architecture type classifications are there in MS SQL Server?
Different types of Indexes in MySQL
Clustered indexes
Besides finding data quickly, indexes can also be used to optimize sort operations (order by) and physically arrange related data closely together.This is process is called clustering of data.

Accessing a row through the clustered index is fast because the row data is on the same page where the index search leads. If a table is large, the clustered index architecture often saves a disk I/O operation, when compared to storage organizations that stores row data using a different page from the index record. (For example, MyISAM uses one file for data rows and another for index records.)

In InnoDB, the records in non-clustered indexes (also called secondary indexes) contain the primary key columns for the row that are not in the secondary index. InnoDB uses this primary key value to search for the row in the clustered index. If the primary key is long, the secondary indexes use more space, so it is advantageous to have a short primary key.

By default, with InnoDB, the primary index is a clustered index.

Comparison to Non-clustered indexes
All indexes are physically stored in order (a btree actually), so if we are returning just the column that is stored in the index, we’re still getting the same benefit. That is because the indexed column’s actual value is stored in the index, therefore MySQL will use the index value instead of reading the record. However, if we start retrieving columns that aren’t part of the index, this is where we want the actual records stored in order, such as they are with a clustered index.

Primary Key
A PRIMARY KEY is a unique index where all key columns must be defined as NOT NULL. If the primary key is not declared as NOT NULL, then MySQL declares them implicitly (and silently). A table can have only one PRIMARY KEY. The name of a PRIMARY KEY is always PRIMARY, which thus cannot be used as the name for any other kind of index.

Unique Key
A UNIQUE index creates a constraint such that all values in the index must be distinct. An error occurs if we try to add a new row with a key value that matches an existing row. For all engines, a UNIQUE index permits multiple NULL values for columns that contain NULL.

Normal Index
If it’s not primary or unique, it doesn’t constrain values inserted into the table, but it does allow them to be looked up more efficiently.

Full Text Index
It is a more specialized form of indexing that allows full text search. Think of it as (essentially) creating an “index” for each “word” in the specified column. Up to 5.5 versions, this index is supported for MyISAM engine only but from 5.6 it supports both MyISAM and InnoDB engines.
