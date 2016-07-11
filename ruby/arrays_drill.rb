def build_array(item1, item2, item3)
	return [item1, item2, item3]
end

def add_to_array(param1, param2)
#	param1.concat([param2]) 
	param1 << param2
end

#Initialize an empty array and store it in a variable (you can choose the name). Print the variable using p.
awesome_array = []
p awesome_array

#Add five items to your array. Print the array.
# awesome_array << "rock" << "scissors" << "paper" << "pen" << "rocket launcher"
# p awesome_array

awesome_array.concat( ["rock", "scissors", "paper", "pen", "rocket launcher"] )
p awesome_array

#Delete the item at index 2. Print the array.
awesome_array.delete_at(2)
p awesome_array

#Insert a new item at index 2. Print the array.
awesome_array.insert(2, "rocket speed")
p awesome_array

#Remove the first item of the array without having to refer to its index. Print the array.
awesome_array.shift
p awesome_array

#Ask the array whether it includes a certain item. Print the result of this method call (labeled so it prints as more than just an isolated boolean value without any context.)
puts "Pen is included in array:"
p awesome_array.include?("pen")

#Initialize another array that already has a few items in it.
super_array = ["rainbow", "unicorn", "potato"]

#Add the two arrays together and store them in a new variable. Print the new array.
best_array_ever = awesome_array + super_array
p best_array_ever

p build_array(1, "two", nil)

p add_to_array([1,2,3], "four")
p add_to_array([], "a")
p add_to_array(["a", "b", "c", 1, 2], 3)
