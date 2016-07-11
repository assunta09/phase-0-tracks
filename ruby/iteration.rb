# Release O: Write your own method that takes a block
=begin
def awesome_method
	puts "Oh look at them cute blocks"
	yield("good_day")
end

awesome_method {|xx_day| puts "I wish you a #{xx_day}"}
=end

#Release 1: Use each, map and map!

great_array = ["unicorns", "love", "summer"]
puts "great_array before iteration:"
p great_array
awesome_hash = { goal: "moon", shuttle: "rocket", task: "moonshot"}
puts "awesome_hash before iteration:"
p awesome_hash


great_array.each {|x| puts "I love #{x}"}
great_array.map! do |x|
	x.upcase
end

puts "great array after iteration"
p great_array

awesome_hash.each {|x, y| puts "#{x} matches #{y}"}


#Release 2: Use documentation

#1. A method that iterates through the items

example_array = [1,2,3,4,5,6,7,8,9,10]

example_array.delete_if {|number| number < 5}

p example_array



#2. A method that that filters a data structure for only items that do satisfy a certain condition

example_array = [1,2,3,4,5,6,7,8,9,10]

example_array.select! {|number| number.even? }

p example_array

#3. Another method that that filters a data structure for only items that do satisfy a certain condition

example_array = [1,2,3,4,5,6,7,8,9,10]

new_array = example_array.drop_while{|number| number < 5}

p new_array

