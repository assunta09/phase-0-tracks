# Encrypt 
# => Method takes an input
# 	Check length of string
# => Loop through all letters until length of string
# => Use .next to alter each letter
# => Add all letters together with +=

def encrypt(string)
	length = string.length
	counter = 0
	new_string = ""
	while counter < length
		new_string += string[counter].next
		counter += 1
	end
	puts new_string
end

encrypt("abc")
encrypt("bootcamp")