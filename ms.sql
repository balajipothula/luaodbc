-- connecting to ms sql server instance.
sqlcmd -S tcp:factset.cgkaelgeb32b.ap-south-1.rds.amazonaws.com,1433 -U admin -P admin123

-- seleting database.
select DB_NAME()
GO

-- creating database.
CREATE DATABASE IF NOT EXISTS office_db

-- using database.
USE office_db

-- creating table.
CREATE TABLE IF NOT EXISTS emp_tab(no INT, name VARCHAR(10))

-- inserting data / records into table.
INSERT INTO emp_tab(no, name) VALUES(1001, 'Ram')
INSERT INTO emp_tab(no, name) VALUES(1002, 'Dev')
INSERT INTO emp_tab(no, name) VALUES(1003, 'Raj')
