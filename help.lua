local flag = con:execute("CREATE TABLE emp_tab(no INT, name VARCHAR(10))")

CREATE DATABASE IF NOT EXIST office_db
USE office_db
CREATE TABLE IF NOT EXIST emp_tab(no INT, name VARCHAR(10))

INSERT INTO emp_tab(no, name) VALUES(1001, 'Ram')
INSERT INTO emp_tab(no, name) VALUES(1002, 'Dev')
INSERT INTO emp_tab(no, name) VALUES(1003, 'Raj')

emp:foreach(function(no, name)
  print(no, name)
end)

local flag = con:execute( [[CREATE TABLE emp_tab(no INT, name VARCHAR(10))]] )

emp_set = { { no = 104, name = "Ali" },
            { no = 105, name = "Eve" }, }

for i, emp in pairs (list) do
  local flag = con:execute( string.format( [[INSERT INTO emp_tab VALUES ('%d', '%s')]], emp.no, emp.name) )
  print(flag)
end

local emp  = con:execute( [[SELECT no, name FROM emp_tab]] )

local flag = con:execute( [[DROP TABLE emp_tab]] )
