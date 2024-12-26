--[[
    basic file handling
]]
--

local file = io.open("test.txt", "w")

if file then
	file:write("Hello World!")
	file:close()
else
	print("Error: Unable to open file")
end

file = io.open("test.txt", "r")

if file then
	print(file:read())
	file:close()
else
	print("Error: Unable to open file")
end
