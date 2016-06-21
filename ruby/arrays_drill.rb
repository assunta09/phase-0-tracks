awesome_array = []
p awesome_array

# awesome_array << "rock" << "scissors" << "paper" << "pen" << "rocket launcher"
# p awesome_array

awesome_array.concat( ["rock", "scissors", "paper", "pen", "rocket launcher"] )
p awesome_array

awesome_array.delete_at(2)
p awesome_array

awesome_array.insert(2, "rocket speed")
p awesome_array

awesome_array.shift
p awesome_array

puts "Pen is included in array:"
p awesome_array.include?("pen")

super_array = ["rainbow", "unicorn", "potato"]
best_array_ever = awesome_array + super_array
p best_array_ever