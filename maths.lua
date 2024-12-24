--[[ 
    Now let's do some basic maths operations ! 
]]--

function add(var1, var2)
    if (type(var1) ~= 'number' or type(var2) ~= 'number') then
        return error("NaN", 1)
    end
    return var1 + var2
end

function sub(var1, var2)
    if (type(var1) ~= 'number' or type(var2) ~= 'number') then
        return error("NaN", 1)
    end
    return var1 - var2
end

function div(var1, var2)
    if (type(var1) ~= 'number' or type(var2) ~= 'number') then
        return error("NaN", 1)
    end
    return var1 / var2
end

function mult(var1, var2)
    if (type(var1) ~= 'number' or type(var2) ~= 'number') then
        return error("NaN", 1)
    end
    return var1 * var2
end

--[[ 
    computing exponent
]]--
function exp(var1, var2)
    if (type(var1) ~= 'number' or type(var2) ~= 'number') then
        return error("NaN", 1)
    end
    local result = var1
    for i = 1, var2, 1 do
        result = result * var1
    end
    return result
end

--[[ 
    percentile
]]--
function perc(var1, var2)
    if (type(var1) ~= 'number' or type(var2) ~= 'number') then
        return error("NaN", 1)
    end
    return var1 *100 / var2.."%"
end


print(add(10, 100))
print(sub(10, 100))
print(mult(10, 100))
print(div(10, 100))
print(exp(10, 10))
print(perc(10, 100))