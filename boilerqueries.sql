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
