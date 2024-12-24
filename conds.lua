--[[ classic conditional programming ]]--

function testBoolean(bool1)
    if (bool1 == true) then
        print ("it is true !! 😀")
    elseif (bool1 == false) then
        print ("it is false !! 🫠")
    else
        print ("WTF mate ?? 😳")
    end
end

name = "Marma"

testBoolean(name == "Marma")
testBoolean(name == "Kevin")
testBoolean(5)