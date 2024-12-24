--[[ 
    Classic variables allocation. 
    https://www.lua.org/pil/2.html : 
        "Lua is a dynamically typed language. There are no type definitions in the language; each value carries its own type.
        There are eight basic types in Lua: nil, boolean, number, string, userdata, function, thread, and table."
    Let's explore each of them, userdata, threads (https://www.lua.org/pil/2.7.html) and functions (./funcs.lua) excepted 
    (btw: Notice .. operator for string concatenation and type() function for type checking).
]]--

tryNil = nil -- useful to initialize an empty variable--
tryNil = "My name is Marma"
print("tryNil equals "..tryNil.." and its type is "..type(tryNil))
tryNil = nil
--[[
This code won't work anymore, since we deallocated tryNil value, using nil type
print("tryNil equals "..tryNil.." and its type is "..type(tryNil))
]]--

num = 100
print("num equals "..num.." and its type is "..type(num))

bool = num == 100
print("bool equals "..tostring(bool).." and its type is "..type(bool))

str = "one hundred"
print("str equals "..str.." and its type is "..type(str))

tab = {}
tab.bool = bool
tab.num = num
tab[100] = str
print("tab is a "..type(tab))
print("let's explore its entries we inserted ".. tostring(tab.bool).." and "..tab[100].." and ".. tab.num)
