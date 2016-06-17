
# Asks a secret agent (the user) whether they would like to decrypt or encrypt a password
# Store preference in variable user_preference
# Asks them for the password
# Store password in variable password
# Use an if formular to check which condition applies. 
# Conduct the requested operation

puts "Do you want to encrypt or decrypt your password?"

user_preference = gets.chomp

puts "What is your password"

password = gets.chomp



# Encrypt 
# Method takes an input
# Check length of string
# Loop through all letters until length of string
# Use .next to alter each letter
# Add all letters together with +=



def encrypt(string)
	length = string.length
	counter = 0
	new_string = ""
	while counter < length
		if string[counter] == "z"
			new_string += "a"
		else
			new_string += string[counter].next
			counter += 1
		end
	end
	puts new_string
	return new_string
end

#encrypt("abc")
#encrypt("bootcamp")

#Decrypt
# method takes an input
# check length of string
# loop through all letters until lengt of string
# define alphabet variable
# find index of each letter in string in the alphabet variable
# reduce index of letter by 1
# add all letters together with +=


def decrypt(new_string)
	length = new_string.length
	counter = 0
	old_string = ""
	while counter < length
		alphabeth = "abcdefghijklmnopqrstuvwxyz"
		letter = new_string[counter]
		index = alphabeth.index(letter)
		old_string += alphabeth[index - 1]
		counter += 1
	end
	puts old_string
end


if user_preference == "encrypt"
	encrypt(password)
else
	decrypt(password)
end

#decrypt("cdf")
#decrypt("abcd")

#decrypt(encrypt("swordfish"))

# this nested method works because it first evaluates
# the inner method (within the brakets) and then uses that output as the
# input for the outer method
