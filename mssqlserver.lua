package.path  = package.path  .. ";/home/ec2-user/.luarocks/share/lua/5.1/?.lua"
package.cpath = package.cpath .. ";/home/ec2-user/.luarocks/lib/lua/5.1/?.so"

local odbc = require("odbc")
odbc.environment():drivers(print)

--ms_sql_server = odbc:connect("tcp://factset.cgkaelgeb32b.ap-south-1.rds.amazonaws.com:1433", "admin", "admin123")
--ms_sql_server = odbc:connect("tcp://factset.cgkaelgeb32b.ap-south-1.rds.amazonaws.com:1433;user=admin;password=admin123")
