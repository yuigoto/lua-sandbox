--[[
    STATEMENTS
    ======================================================================
    Some conditional statements in Lua.
    ----------------------------------------------------------------------
    @author     Fabio Y. Goto <lab@yuiti.com.br>
    @since      0.0.1
    @copy       (c) 2017 Fabio Y. Goto
--]]

-- Some variables we can use for testing
a = 10
b = 12
c = 0
tbls = {
    entry1 = "Hi", 
    entry2 = "My name is Fabio", 
    entry3 = "And I'm learning Lua", 
    entry4 = "I do hope this helps you learn too!", 
    entry5 = "Because I'm a disaster at teaching people! :("
}

-- Simple if/else
if a < 10 then
    print("a is less than 10")
else
    print("a is greater or equal than 10")
end

-- A bit more complex if/else
if a == 10 then 
    print("a is equal to 10")
elseif a == 20 then
    print("a is equal to 20")
else
    print("There's no a, is there?")
end

-- For loop
for i=1, 10 do
    print("Current number is "..i)
end

-- Nested for loop
for x=1,3 do
    for y=1,3 do
        print("X: "..x.." / Y: "..y)
    end
end

-- For loop with 3 arguments (only prints even numbers as example)
for u = 0, 16, 2 do
    print("Right now we're at "..u)
end

-- For loops in a table (let's get the table from above)
for key, value in pairs(tbls) do
    -- Important, it goes in ascending order, RTFM for more details! ;)
    print(key.." = "..value)
end

-- Small note: I REALLY do miss the += and -= operators here :/

-- While loop
local h = 0
while h < 10 do
    print("h is "..h)
    h = h + 1
end

-- Repeat
local d = 0
repeat 
    print("d's value is "..d)
    d = d + 1;
until d >= 10;
