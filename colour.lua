--[[
    COLOUR
    ======================================================================
    Table with function to convert or parse colour values.
    ----------------------------------------------------------------------
    @author     Fabio Y. Goto <lab@yuiti.com.br>
    @since      0.0.1
    @copy       (c) 2017 Fabio Y. Goto
--]]

-- Set up the colour table
local colour = {}

--[[
    Receives a string containing a RGB hexadecimal colour and converts it to 
    integer RGB values, ranging from 0 ~ 255.

    The returned values can be directly assigned to three variables, like:
    r, g, b = colour.hexToRGB("#204a85")
--]]
function colour.hexToRGB(colour) 
    -- Use regex to filter out unwanted characters
    colour = colour:gsub("^#?([a-f0-9]*);?", "%1")

    -- Check length (should be 3 or 6
    if (#colour ~= 3 and #colour ~= 6) then 
        -- Return black, if the colour is invalid
        return 0, 0, 0
    else 
        if (#colour == 3) then
            -- 3 characters HEX colour
            r = colour:sub(1,1)..colour:sub(1,1)
            g = colour:sub(2,2)..colour:sub(2,2)
            b = colour:sub(3,3)..colour:sub(3,3)
        else
            -- 6 characters HEX colour
            r = colour:sub(1,2)
            g = colour:sub(3,4)
            b = colour:sub(5,6)
        end

        -- Return the values
        return tonumber(r, 16), tonumber(g, 16), tonumber(b, 16)
    end
end

--[[
    Return, so we can require it by assigning to a variable.
--]]
return colour
