Randing = {
	generateARandomCharacter = function()
		return string.char(math.random(32, 126))
	end,
	generateARandomPassword = function(length)
		local seed = ""
		for i = 1, length do
			seed = seed .. Randing.generateARandomCharacter()
		end
		return seed
	end,
}

return Randing
-- print(generateARandomPassword(100)) --
