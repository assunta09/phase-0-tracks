puts "INTERIOR DESIGN CLIENT FILE"

user_profile = {}

# Program asks the user for their name, sex, adress, number of children, decor theme and allergies
# Save the input with the correct keys
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

puts "Here is an overview of your answers:
Name:                #{user_profile[:user_name]}
Female?              #{user_profile[:female]}
Address:             #{user_profile[:user_address] }
Number of Children:  #{ user_profile[:number_children] }
Decor Theme:         #{ user_profile[:decor_theme] }
Allergies:           #{ user_profile[:allergies]}"


# Ask the user if they want to change anything
# If they want to change sth. Update the appropriete key
# Else skip to the end

puts "Do you want to make any changes? Which of the data-points do you want to make changes to?"
changes = gets.chomp

if changes == "Name" 
	puts "Correct Name:"
	user_profile[:user_name] = gets.chomp
elsif changes == "Female?" 
	puts "Are you Female?"
	answer_sex = gets.chomp
		if answer_sex == "yes"
			user_profile[:female] = true
		elsif answer_sex == "no"
			user_profile[:female] = false
		else
			user_profile[:female] = nil
		end
elsif changes == "Address" 
	puts "Please enter your correct address:"
	user_profile[:user_address] = gets.chomp
elsif changes == "Number of Children" 
	puts "Please enter the correct number of children:"
	user_profile[:number_children] = gets.to_i
elsif changes == "Decor Theme"
	puts "Please tell us your decor theme:"
	user_profile[:decor_theme] = gets.chomp
elsif changes == "Allergies"
	puts "Please list any allergies we should know about?"
	user_profile[:allergies] = gets.chomp
else
	puts "Thank you - no changes will be recorded"
end


puts "Here is an overview of your answers:
Name:                #{user_profile[:user_name]}
Female?              #{user_profile[:female]}
Address:             #{user_profile[:user_address] }
Number of Children:  #{ user_profile[:number_children] }
Decor Theme:         #{ user_profile[:decor_theme] }
Allergies:           #{ user_profile[:allergies]}"







