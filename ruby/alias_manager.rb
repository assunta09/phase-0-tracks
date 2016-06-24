puts "SPYINATOR 2000 - BULLETPROOF SECRET AGENT NAMES"
stop = " "
time = 0
spy_user = {}



while stop != "quit"
	# request spy name
	puts "Enter a name you want to have converted"
	# store spy name in variable
	spyinator = gets.chomp
	# turn spy names into array consisting of the names

	spyinator_1 = spyinator.split(' ')

	# swapp first and second name

	spyinator_1[0],spyinator_1[-1] = spyinator_1[-1], spyinator_1[0]

	# incase the user has entered some of the name lowercase - capitalize

	spyinator_1.map!(&:capitalize)

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
			elsif "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ".index(spy) == 19
				new_spy = "b"
			else
				spy_index = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ".index(spy) + 1
				spy = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ"[spy_index]
			end
		elsif spy == " "
			spy = " "
		else 
			if "aeiouAEIOU".index(spy) == 4
				spy = "a"
			elsif "aeiouAEIOU".index(spy) == 9
				spy = "A"
			else
				spy_index = "aeiouAEIOU".index(spy) + 1
				spy = "aeiouAEIOU"[spy_index]
			end
		end

		spyinator_2[count] = spy
		count += 1
	}


	#join the letters back into a string
	spyinator_finale = spyinator_2.join('')
	
	time += 1
	test = "spyinator_".concat(time.to_s)
	spy_user[test] = {
		:name => spyinator,
		:spyname => spyinator_finale
		}

	p spy_user


	puts "The spyname for #{spyinator} is #{spyinator_finale}

Hit enter to test another name or type quit to stop the programm"

	stop = gets.chomp
end


spy_user.each{|key| puts key }





