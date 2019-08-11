package.path  = package.path  .. ";/home/ec2-user/.luarocks/share/lua/5.1/?.lua"
package.cpath = package.cpath .. ";/home/ec2-user/.luarocks/lib/lua/5.1/?.so"

local odbc = require "odbc"

CNN_DRV = {
        {Driver='{ODBC Driver 17 for SQL Server}'};
        {Server='factset.cgkaelgeb32b.ap-south-1.rds.amazonaws.com,1433'};
        {Database='master'};
        {Uid='admin'};
        {Pwd='admin123'};
};

dbassert = odbc.assert
env,err = odbc.environment()
local cnn, err = env:driverconnect(CNN_DRV)

print(cnn)
print(err)
