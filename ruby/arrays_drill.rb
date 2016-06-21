def build_array(item1, item2, item3)
	return [item1, item2, item3]
end

def add_to_array(param1, param2)
#	param1.concat([param2]) 
	param1 << param2
end

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

p build_array(1, "two", nil)

p add_to_array([1,2,3], "four")
p add_to_array([], "a")
p add_to_array(["a", "b", "c", 1, 2], 3)
