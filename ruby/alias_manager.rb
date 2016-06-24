puts "SPYINATOR 2000 - BULLETPROOF SECRET AGENT NAMES"

# request spy name
puts "What is you name"
# store spy name in variable
spyinator = gets.chomp
# turn spy names into array consisting of the names

spyinator_1 = spyinator.split(' ')


# swapp first and second name

spyinator_1[0],spyinator_1[-1] = spyinator_1[-1], spyinator_1[0]

# put it back into a string

spy_stage_1 = spyinator_1.join(' ')


# turn spy names into array consisting of the letters
spyinator_2 = spy_stage_1.split('')


# exchange the vowels for the next vowel in 'aeiou'
# exchange the consonants for the next consonant in the alphabet


count = 0
spyinator_2.each { |spy|
	if "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ".index(spy) != nil
		if "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ".index(spy) == 31
			spy = "B"
#			spyinator_2[count] = spy
		elsif "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ".index(spy) == 19
			new_spy = "b"
#			spyinator_2[count] = spy
		else
			spy_index = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ".index(spy) + 1
			spy = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ"[spy_index]
#			spyinator_2[count] = spy
		end
	elsif spy == " "
		spy = " "
#		spyinator_2[count] = spy
	else 
		if "aeiouAEIOU".index(spy) == 4
			spy = "a"
#			spyinator_2[count] = spy
		elsif "aeiouAEIOU".index(spy) == 9
			spy = "A"
#			spyinator_2[count] = spy
		else
			spy_index = "aeiouAEIOU".index(spy) + 1
			spy = "aeiouAEIOU"[spy_index]
#			spyinator_2[count] = spy
		end
	end
	spyinator_2[count] = spy
	count += 1
}

#join the letters back into a string
spyinator_finale = spyinator_2.join('')


puts "Congrats your new name is #{spyinator_finale}"



# exchange the consonants for the next consonant in the alphabet



