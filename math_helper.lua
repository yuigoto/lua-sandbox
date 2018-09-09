--[[
    MATH HELPER
    ======================================================================
    Some math related functions, from finding an angle of a line between two 
    points to other very small stuff.
    ----------------------------------------------------------------------
    @author     Fabio Y. Goto <lab@yuiti.com.br>
    @since      0.0.1
    @copy       (c) 2017 Fabio Y. Goto
--]]

-- Set up the math helper table
local math_helper = {}

--[[
    The two variables below exist so we don't compute their value all the 
    time, saving some processing time.
--]]
math_helper._deg_to_rad = math.pi / 180
math_helper._rad_to_deg = 180 / math.pi

--[[
    Originally from a GameMaker script, it shift one value towards another 
    by step.
--]]
function math_helper.approach(start, finish, step)
    if start > finish then
        return math.max(start - step, finish)
    else 
        return math.min(start + step, finish)
    end
end

--[[
    Conversion from degrees to radians.
--]]
function math_helper.degToRad(number)
    return number * math_helper._deg_to_rad
end

--[[
    Conversion from radians to degrees.
--]]
function math_helper.radToDeg(number)
    return number * math_helper._rad_to_deg
end

--[[
    Calculates the angle of the line between two points.
--]]
function math_helper.vertexDirection(x1, y1, x2, y2)
    -- Any nil value makes return be 0
    if x1 == nil or y1 == nil or x2 == nil or y2 == nil then
        return 0
    end

    -- Calculate angle in radians
    local rotation = math.atan2(y2 - y1, x2 - x1)
    
    -- Though we return in degrees
    return math_helper.degToRad(rotation)
end

--[[
    Calculates the distance of the line between two points.
--]]
function math_helper.vertexDistance(x1, y1, x2, y2)
    -- Any nil value makes return be 0
    if x1 == nil or y1 == nil or x2 == nil or y2 == nil then
        return 0
    end

    -- Local deltas
    local pow_x = math.pow(x1 - x2, 2)
    local pow_y = math.pow(y1 - y2, 2)
    
    -- Then return the distance
    return math.sqrt(pow_x + pow_y)
end

--[[
    Inspired by GameMaker' "lengthdir_x", returns the new X position of 
    a point, after walking a certain distance, at a certain angle.
--]]
function math_helper.lengthDirX(x, angle, distance)
    return x + (distance * math.cos(math_helper.degToRad(angle)))
end

--[[
    Inspired by GameMaker' "lengthdir_y", returns the new Y position of 
    a point, after walking a certain distance, at a certain angle.
--]]
function math_helper.lengthDirY(y, angle, distance)
    return y + (distance * math.sin(math_helper.degToRad(angle)))
end

--[[
    This is for equilateral/isosceles triangles.

    Given two points, A and B, of a triangle, find the position of the 
    third (C) point, taking into account that the angle between lines
    AB and AC (it's always relative to the first point).
--]]
function math_helper.triangleVertexPosition(x1, y1, x2, y2, angle)
    -- Get distance between points A and B
    distance = math_helper.vertexDistance(x1, y1, x2, y2);

    -- Returns a table with the x/y coordinate
    return {
        x = math_helper.lengthDirX(x1, angle, distance), 
        y = math_helper.lengthDirY(y1, angle, distance)
    }
end

--[[
    Return, so we can require it by assigning to a variable, like:
    local test = require "math_helper"
    print(test.degToRad(210))
--]]
return math_helper
