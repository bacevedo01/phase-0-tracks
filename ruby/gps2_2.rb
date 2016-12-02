#Grocery List
#Create a new list
#Add an item to list
#Remove an item to list
#Update qualities
#Print the list

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # input
  # .split the string into a hash with a default quanity
  # set default quantity
  # print the list to the console and make it look nice.
# output: pring out a hash


# Create list method


	def create_list(grocery_string)
		grocery_list = {}
		grocery_array = grocery_string.split(" ")
		grocery_array.each do |item|
			grocery_list[item] = 0
		end
		return grocery_list
	end
 	
 	temp = create_list("apples pears pizza juice")

# Method to add an item to a list
	def add_item(grocery_list, food_item, quantity = 0)
		grocery_list[food_item] = quantity
		return grocery_list
	end

p add_item(temp,"burger")

# input: item name and optional quantity
# steps:
# output:

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


