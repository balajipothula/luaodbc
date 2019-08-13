--> getting home path.
local HOME = os.getenv("HOME")

--> setting odbc shared object path.
package.cpath = HOME .. "/.luarocks/lib/lua/5.1/?.so;;"    .. package.cpath

--> setting odbc lua library path.
package.path  = HOME .. "/.luarocks/share/lua/5.1/?.lua;;" .. package.path

--> initializing odbc library.
local odbc = require("odbc")

--> initializing odbc environment.
local env, err = odbc.environment()

--> microsoft sql server connection table.
local con_table = {
                    { Driver   = "ODBC Driver 17 for SQL Server" },
                    { Server   = "luaodbc.cgkaelgeb32b.ap-south-1.rds.amazonaws.com,1433" },
                    { Uid      = "admin" },
                    { Pwd      = "admin123" },
                    { Database = "office_db" },
                  }

--> getting microsoft sql server connection.
local con, err = env:driverconnect(con_table)

--> getting no of rows in table.
--> local emp_count = con:execute("SELECT COUNT(*) FROM emp_tab"):fetch()
--> print(emp_count)

--> getting emp records
local emp_tab = con:execute("SELECT no, name FROM emp_tab")
local emp     = emp_tab:fetch({}, "a")

local i = 1
while emp do
  print(i, emp.no, emp.name)
  emp = emp_tab:fetch(emp, "a")
  i = i + 1
end

--> closing cursor.
if nil ~= emp then emp:close() end

--> closing connection.
if not con then con:close() end

--> closing environment.
if not env then env:close() end
