-- superclass
local function Vehicle(name, wheels, age, hp)
	local factor -- will follow a shamefully unaccurate speed computing
	if wheels <= 2 then
		factor = 30
	elseif wheels <= 4 then
		factor = 20
	else
		factor = 15
	end

	-- You can notice some variables are not returned (i.e. wheels). They can be considered private.
	-- they will be nil out of the object scope.

	return {
		name = name or " ",
		age = age or 0,
		topSpeed = math.floor(factor * cubeRoot(hp) + 0.5),
		present = function(self)
			print(
				"My vehicle is a "
					.. self.name
					.. ", its top speed is "
					.. self.topSpeed
					.. " mph, or around "
					.. mphToKph(self.topSpeed)
					.. " KM/H"
			)
		end,
	}
end

-- subclass
local function Car(name, age, hp)
	local car = Vehicle(name, 4, age, hp)
	car.noise = "Vr" .. string.rep("o", hp / 10) .. "m !!!"
	car.makeNoise = function(self)
		print("It goes " .. self.noise)
	end
	return car
end

-- subclass
local function Motorcycle(name, age, hp)
	local moto = Vehicle(name, 2, age, hp)
	moto.wheelie = function(self)
		if self.age > 10 then
			print("Can't wheelie, too heavy, brrrraaap!!!")
		else
			print("WHEEEEEEEEEEEEBRRRRAAAAAAAAAPPPPOPOPOPOPOP")
		end
	end
	return moto
end

-- some maths
function cubeRoot(x)
	if x == 0 then
		return 0
	end

	-- Use math.abs to handle negative inputs
	local absValue = math.abs(x)
	local result = absValue ^ (1 / 3)

	-- If the original number was negative, negate the result
	if x < 0 then
		return -result
	end

	return result
end

-- for fellow normal people
function mphToKph(mph)
	return math.floor((mph * 1.60934) + 0.5)
end

local toyo = Car("Yaris", 5, 90)
-- the ":" use is permitting to use self.
-- It is a good practice to always call object functions like this, and always give them self as parameter even if they don't use it.
toyo:present()
toyo:makeNoise()
print("it is " .. toyo.age .. " years old !")
--As said earlier, private, will be nil:
--print("It has " .. toyo.wheels .. "wheels")

local lambo = Car("Murcielago", 2, 660)
lambo:present()
lambo:makeNoise()

local triumph = Motorcycle("Bonneville", 20, 80)
triumph:present()
triumph:wheelie()

local kawa = Motorcycle("H2R", 2, 326)
kawa:present()
kawa:wheelie()
