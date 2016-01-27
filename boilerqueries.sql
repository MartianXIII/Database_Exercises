    -- MYSQL-BOILER QUERIES



    -- CONNECTNG IN TERMINAL
    mysql -h <host> -u <user> -p<passwd>
    mysql -h <host> -u <user> -p
    Enter password: ***
    mysql -u user -p
    mysql
    mysql -h <host> -u <user> -p <Database>




    -- QUERY
    SELECT * FROM table
    SELECT * FROM table1, table2, ...
    SELECT field1, field2, ... FROM table1, table2, ...

    SELECT ... FROM ... WHERE condition
    SELECT ... FROM ... WHERE condition GROUP BY field
    SELECT ... FROM ... WHERE condition GROUP BY field HAVING condition2
    SELECT ... FROM ... WHERE condition ORDER BY field1, field2
    SELECT ... FROM ... WHERE condition ORDER BY field1, field2 DESC
    SELECT ... FROM ... WHERE condition LIMIT 10

    SELECT DISTINCT field1 FROM ...
    SELECT DISTINCT field1, field2 FROM ...

    SELECT ... FROM t1 JOIN t2 ON t1.id1 = t2.id2 WHERE condition
    SELECT ... FROM t1 LEFT JOIN t2 ON t1.id1 = t2.id2 WHERE condition
    SELECT ... FROM t1 JOIN (t2 JOIN t3 ON ...) ON ...
    SELECT ... FROM t1 JOIN t2 USING(id) WHERE condition




    -- CONDITIONALS
    field1 = value1
    field1 <> value1
    field1 LIKE 'value _ %'
    field1 IS NULL
    field1 IS NOT NULL
    field1 IN (value1, value2)
    field1 NOT IN (value1, value2)
    condition1 AND condition2
    condition1 OR condition2




    -- DATA MANIPULATION
    INSERT INTO table1 (field1, field2, ...) VALUES (value1, value2, ...)
    INSERT table1 SET field1=value_1, field2=value_2 ...

    LOAD DATA INFILE '/tmp/mydata.txt' INTO TABLE table1
    FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' ESCAPED BY '\\'

    DELETE FROM table1 / TRUNCATE table1
    DELETE FROM table1 WHERE condition
        -- join:
    DELETE FROM table1, table2 WHERE table1.id1 = table2.id2 AND condition

    UPDATE table1 SET field1=new_value1 WHERE condition
        -- join:
    UPDATE table1, table2 SET field1=new_value1, field2=new_value2, ...
    WHERE table1.id1 = table2.id2 AND condition




    -- BROWSING
    SHOW DATABASES
    SHOW TABLES
    SHOW FIELDS FROM table / SHOW COLUMNS FROM table / DESCRIBE table / DESC table / EXPLAIN table
    SHOW CREATE TABLE table
    SHOW CREATE TRIGGER trigger
    SHOW TRIGGERS LIKE '%update%'
    SHOW PROCESSLIST
    KILL process_number
    SELECT table_name, table_rows FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = '**yourdbname**';
    $ mysqlshow
    $ mysqlshow database




    -- CREATE_DELETE_SELECT_ALTER-DATABASE
    CREATE DATABASE [IF NOT EXISTS] mabase [CHARACTER SET charset] [COLLATE collation]
    CREATE DATABASE mabase CHARACTER SET utf8
    DROP DATABASE mabase
    USE mabase

    ALTER DATABASE mabase CHARACTER SET utf8




    -- CREATE_DELETE_MODIFY TABLE
    CREATE TABLE table (field1 type1, field2 type2, ...)
    CREATE TABLE table (field1 type1 unsigned not null auto_increment, field2 type2, ...)
    CREATE TABLE table (field1 type1, field2 type2, ..., INDEX (field))
    CREATE TABLE table (field1 type1, field2 type2, ..., PRIMARY KEY (field1))
    CREATE TABLE table (field1 type1, field2 type2, ..., PRIMARY KEY (field1, field2))
    CREATE TABLE table1 (fk_field1 type1, field2 type2, ...,
      FOREIGN KEY (fk_field1) REFERENCES table2 (t2_fieldA)
        [ON UPDATE] [CASCADE|SET NULL|RESTRICT]
        [ON DELETE] [CASCADE|SET NULL|RESTRICT])
    CREATE TABLE table1 (fk_field1 type1, fk_field2 type2, ...,
      FOREIGN KEY (fk_field1, fk_field2) REFERENCES table2 (t2_fieldA, t2_fieldB))
    CREATE TABLE table IF NOT EXISTS (...)

    CREATE TABLE new_tbl_name LIKE tbl_name
      [SELECT ... FROM tbl_name ...]

    CREATE TEMPORARY TABLE table (...)

    CREATE table new_table_name as SELECT [ *|column1, column2 ] FROM table_name

    DROP TABLE table
    DROP TABLE IF EXISTS table
    DROP TABLE table1, table2, ...
    DROP TEMPORARY TABLE table

    ALTER TABLE table MODIFY field1 type1
    ALTER TABLE table MODIFY field1 type1 NOT NULL ...
    ALTER TABLE table CHANGE old_name_field1 new_name_field1 type1
    ALTER TABLE table CHANGE old_name_field1 new_name_field1 type1 NOT NULL ...
    ALTER TABLE table ALTER field1 SET DEFAULT ...
    ALTER TABLE table ALTER field1 DROP DEFAULT
    ALTER TABLE table ADD new_name_field1 type1
    ALTER TABLE table ADD new_name_field1 type1 FIRST
    ALTER TABLE table ADD new_name_field1 type1 AFTER another_field
    ALTER TABLE table DROP field1
    ALTER TABLE table ADD INDEX (field);
    ALTER TABLE table ADD PRIMARY KEY (field);




    -- Change field order:
    ALTER TABLE table MODIFY field1 type1 FIRST
    ALTER TABLE table MODIFY field1 type1 AFTER another_field
    ALTER TABLE table CHANGE old_name_field1 new_name_field1 type1 FIRST
    ALTER TABLE table CHANGE old_name_field1 new_name_field1 type1 AFTER another_field

    ALTER TABLE old_name RENAME new_name;




    -- KEYS
    CREATE TABLE table (..., PRIMARY KEY (field1, field2))
    CREATE TABLE table (..., FOREIGN KEY (field1, field2)) REFERENCES table2 (t2_field1, t2_field2))
    ALTER TABLE table ADD PRIMARY KEY (field);
    ALTER TABLE table ADD CONSTRAINT constraint_name PRIMARY_KEY (field, field2);




    -- CREATE_MODIFY_DROP VIEW
    CREATE VIEW view AS SELECT ... FROM table WHERE ...

    
