-- Operators --

-- play with those to test conditional operators --

old = true
dumb = true
man = true

if old and dumb and man then
	print("marma !")
elseif old and dumb or dumb and man then
	print("marma ?")
else
	print("not marma.")
end
