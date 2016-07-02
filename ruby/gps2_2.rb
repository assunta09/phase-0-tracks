# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")

def shopping_list(string)
	grocery_list = {}
# steps: 
  	# separate string into array
	array = string.split(' ')
	# loop through array to create hash with items in array as key and set default quantity to ""
	array.map {|item| grocery_list[item] = ""}
	# print the list to the console [can you use one of your other methods here?]
	# output: [what data type goes here, array or hash?]
	#puts grocery_list
	#return grocery_list
end

# Method to add an item to a list
def add_item(existing_list, new_item, item_integer)
	# input: item name and optional quantity
	# steps: pass in item name as key and assign value
	existing_list[new_item] = item_integer
	# output: hash
	p existing_list
end

#Driver code
my_list = shopping_list("carrots apples cereal pizza")
my_list = add_item(my_list, "bananas", 4)



# Method to remove an item from the list
# input:
# steps:
# output:

# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input:
# steps:
# output: