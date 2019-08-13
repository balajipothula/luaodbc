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
