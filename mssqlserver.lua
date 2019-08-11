package.path  = package.path  .. ";/home/ec2-user/.luarocks/share/lua/5.1/?.lua"
package.cpath = package.cpath .. ";/home/ec2-user/.luarocks/lib/lua/5.1/?.so"

local odbc = require("odbc")
ms_sql_server = odbc:connect ("factset.cgkaelgeb32b.ap-south-1.rds.amazonaws.com:1433", "admin", "admin123")
print(ms_sql_server)
