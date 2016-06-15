puts "How many candidates will be screened?"
number_users = gets.to_i

until number_users == 0
	puts "What is your name?"
 	name = gets.chomp

	puts "How old are you?"
	age = gets.to_i

	puts "What year were you born?"
	year = gets.to_i

	puts "Our company cafeteria serves garlic bread. Should we order some for you (y/n)?"
	menue = gets.chomp

	puts "Would you like to enroll in the company's health insurance (y/n)?"
	insurance = gets.chomp

#while loop to request alergies. If the candidate is allergic to sunshine the loop is skipped and the result printed
	allergy = "open"

	while allergy != "done"
		puts "Please list your allergies one by one. When you are finished enter done"
		allergy = gets.chomp
		if allergy == "sunshine"
			result = "Probably a vampire"
			allergy = "done"
		end
	end

	if result == "Probably a vampire"
		puts result

#if the allergie test did not render a vampire. The requested information is evaluated		
	else	
		if name == "Drake Cula" || name == "Tu Fang"
			result = "Definitively a vampire"
		elsif (2016-year) == age && menue == "yes" && insurance == "yes"
			result = "Probably not a vampire"
		elsif (2016-year) != age && menue != "yes" && insurance != "yes"
			result = "Almost certainly a vampire"
		elsif (2016-year) != age && menue != "yes" || insurance != "yes"
			result = "Probably a vampire"
		else
			result = "results inconclusive"
		end
		puts result
	end

	number_users = number_users -1

end	

puts "All candidates screened"
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends"