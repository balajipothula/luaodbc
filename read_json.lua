--> getting home path.
local HOME = os.getenv("HOME")

--> setting odbc shared object path.
package.cpath = HOME .. "/.luarocks/lib/lua/5.1/?.so;;"    .. package.cpath

--> setting odbc lua library path.
package.path  = HOME .. "/.luarocks/share/lua/5.1/?.lua;;" .. package.path

local cjson = require("cjson")

local conjson  = io.open("con.json"):read("*a")

local contable = cjson.decode(conjson)

print(contable)
