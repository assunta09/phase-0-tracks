puts "INTERIOR DESIGN CLIENT FILE"

user_profile = {}

# Program asks the user for their name, sex, adress, number of children, decor theme and allergies
# Save the input with the right keys
# Convert data to the right data_type

puts "What is your name"
user_profile[:user_name] = gets.chomp

puts "Are you female?"
answer_sex = gets.chomp
	if answer_sex == "yes"
		user_profile[:female] = true
	elsif answer_sex == "no"
		user_profile[:female] = false
	else
		user_profile[:female] = nil
	end

puts "Please enter your address:"
user_profile[:user_address] = gets.chomp

puts "Whow many children do you have?"
user_profile[:number_children] = gets.to_i


puts "Please tell us your decor theme:"
user_profile[:decor_theme] = gets.chomp

puts "Please list any allergies we should know about?"
user_profile[:allergies] = gets.chomp

# Print the data to the screen

puts "Name:                #{user_profile[:user_name]}"
puts "Female?              #{user_profile[:female]}"
puts "Address:             #{user_profile[:user_address] }"
puts "Number of Children:  #{ user_profile[:number_children] }"
puts "Decor Theme:         #{ user_profile[:decor_theme] }"
puts "Allergies:           #{ user_profile[:allergies]}"

# Ask the user if they want to change anything
# If they want to change sth. Update the appropriete key
# Else skip to the end

puts "Which of the data-points do you want to make changes to?"
changes = gets.chomp
	if changes == "Name" || "name"
		puts "Correct Name:"
		user_profile[:user_name] = gets.chomp
	elsif changes == "Female?" || "female" || "Female" || "female?"
		puts "Are you Female?"
		answer_sex = gets.chomp
			if answer_sex == "yes"
				user_profile[:female] = true
			elsif answer_sex == "no"
				user_profile[:female] = false
			else
				user_profile[:female] = nil
			end
	elsif changes == "Address" || "address"
		puts "Please enter your correct address:"
		user_profile[:user_address] = gets.chomp
	elsif changes == "Number of Children" || "children" || "Children"
		puts "Please enter the correct number of children:"
		user_profile[:number_children] = gets.to_i
	elsif changes == "Decor Theme"
		puts "Please tell us your decor theme:"
		user_profile[:decor_theme] = gets.chomp
	elsif changes == "Allergies"
		puts "Please list any allergies we should know about?"
		user_profile[:allergies] = gets.chomp
	else
		puts user_profile
	end









