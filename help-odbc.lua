local flag = con:execute(  "CREATE TABLE emp_tab(no INT, name VARCHAR(10))"  )
local flag = con:execute( [[CREATE TABLE emp_tab(no INT, name VARCHAR(10))]] )

local emp_set = { { no = 104, name = "Ali" },
                  { no = 105, name = "Eve" }, }

for i, emp in pairs (emp_set) do
  local flag = con:execute( string.format( [[INSERT INTO emp_tab VALUES ('%d', '%s')]], emp.no, emp.name) )
  print(flag)
end

local emp  = con:execute( [[SELECT no, name FROM emp_tab]] )


local flag = con:execute( [[DROP TABLE emp_tab]] )

emp:foreach(function(no, name)
  print(no, name)
end)
