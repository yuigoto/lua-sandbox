--[[
    MAIN
    ======================================================================
    Main test file.
    ----------------------------------------------------------------------
    @author     Fabio Y. Goto <lab@yuiti.com.br>
    @since      0.0.1
    @copy       (c) 2017 Fabio Y. Goto
--]]

-- Needed, because Lua isn't working with just "require" on my 
-- Windows machine, with relative paths, so we add the "./?.lua" 
-- wildcard for use here on LUA_PATH, temporily.
package.path = package.path..";./?.lua"

-- Require our math helper
local helper = require "math_helper"

-- So we can use like this
print(helper.vertexDistance(3, 5, 8, 18))
