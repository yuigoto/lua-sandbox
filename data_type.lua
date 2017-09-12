--[[
    DATA_TYPE
    ======================================================================
    Just some data types test.
    ----------------------------------------------------------------------
    @author     Fabio Y. Goto <lab@yuiti.com.br>
    @since      0.0.1
    @copy       (c) 2017 Fabio Y. Goto
--]]

-- Number
num01 = 3.14
num02 = 3e10
num03 = math.floor(( num02 / num01 ) * 0.0000000012895)

-- String
str01 = "Hello"
str02 = ", Goodbye"
str03 = str01..str02

-- Nil
null = nil

-- Table (Array = Numerical keys, starting from 1)
table01 = {"a", "b", "c"}

-- Table (Associative = Named keys)
table02 = {
    hi = "Hello", 
    bye = "Bye", 
    barrel_roll = "Do It!"
}

-- Boolean
bool01 = true
bool02 = false

-- Function (assignment)
func01 = function()
    print("This is an assigned function")
end

-- Function (declarative)
function func02()
    print("This is a declarative function")
end
