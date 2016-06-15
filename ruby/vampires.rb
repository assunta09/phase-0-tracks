puts "What is your name?"

name = gets.chomp

puts "How old are you?"

age = gets.to_i

puts "What yeasr were you born?"

year = gets.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you (y/n)?"

menue = gets.chomp

puts "Would you like to enroll in the company's health insurance (y/n)?"

insurance = gets.chomp


if name == "Drake Cula" || name == "Tu Fang"
	puts "Definitively a vampire"
elsif (2016-year) == age && menue == "yes" && insurance == "yes"
	puts "Probably not a vampire"
elsif (2016-year) != age && menue != "yes" && insurance != "yes"
	puts "Almost certainly a vampire"
elsif (2016-year) != age && menue != "yes" || insurance != "yes"
	puts "Probably a vampire"
else
	puts "results inconclusive"
end
