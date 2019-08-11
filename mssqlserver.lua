package.cpath = package.cpath .. ";/home/ec2-user/.luarocks/lib/lua/5.1/?.so"
package.path  = package.path  .. ";/home/ec2-user/.luarocks/share/lua/5.1/?.lua"

local odbc = require("odbc")

local ctable = { { Driver   = '{ODBC Driver 17 for SQL Server}' };
                 { Server   = 'factset.cgkaelgeb32b.ap-south-1.rds.amazonaws.com,1433' };
                 { Database = 'master' };
                 { Uid      = 'admin' };
                 { Pwd      = 'admin123' };
               };

local env, err = odbc.environment()
local con, err = env:driverconnect(ctable)

print(env)
print(con)
