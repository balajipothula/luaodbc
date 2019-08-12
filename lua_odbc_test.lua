local HOME = os.getenv("HOME")

package.cpath = HOME .. "/.luarocks/lib/lua/5.1/?.so;;"    .. package.cpath
package.path  = HOME .. "/.luarocks/share/lua/5.1/?.lua;;" .. package.path

local odbc = require("odbc")

odbc.environment():drivers(print)
