--[[
  No Mundo da Lua - 00
  ----------------------------------------------------------------------
--]]

-- Say Hello
print("Hello, World!")

-- This is a statement
value = 10

-- You can group more statements in a line
b = 3; c = 3; print(b + c)

-- A block of code is a "chunk"
a = 1
b = 3 

print(a * b)

-- The code block of a conditional or a function is a nested chunk
if a == 10
  -- This is a nested chunk
  print("Ten!")
end

function sum (a, b)
  -- This is also a nested chunk
  return a + b
end

-- This is a single line comment

--[[
  This is a multi line comment.
]]

-- You can also comment code blocks like this (check the closing)
--[[
function notExecute ()
  print("Do not execute")
end
--]]

-- So if you need to execute it again, you just do this:
--[[]] <-- See this? Simple, right?
function notExecute ()
  print("Do not execute")
end
--]]
