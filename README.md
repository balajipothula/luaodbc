# lua odbc setup on rhel8 machine.

step-00: sudo hostnamectl set-hostname lua-odbc  

step-01: ./install-lua.sh  
step-02: ./install-luarocks.sh  
step-03: sudo ./install-mssql-tools.sh  
setp-04: luarocks install --local odbc  
setp-05: lua print_odbc_drivers.lua  
