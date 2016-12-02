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
 	
temp = create_list("")

# Method to add an item and optional quanity to a list
def add_item(grocery_list, food_item, quantity = 0)
	grocery_list[food_item] = quantity
	#return grocery_list
end

#add_item(temp,"burger")
#p temp

def remove_item(grocery_list,food_item)
	grocery_list.delete(food_item)
	#return grocery_list
end

#remove_item(temp, "pizza")
#p temp 

def update_item(grocery_list, food_item, quantity)
	grocery_list[food_item] = quantity
	#return grocery_list
end

#update_item(temp, "pears", 300)
# p temp 


# Method to print a list and make it look pretty
def print_list(grocery_list)
		puts "Here is your grocery list:"

		grocery_list.each do |food_item, quantity|
			puts "You need #{quantity} of #{food_item}"
		end
end

add_item(temp, "Lemonade", 2)
add_item(temp, "Tomatoes", 3)
add_item(temp, "Onions", 1)
add_item(temp, "Ice Cream", 4)

print_list(temp)

remove_item(temp, "Lemonade")
update_item(temp, "Ice Cream", 1)

print_list(temp)

# What did you learn about pseudocode from working on this challenge?
	#The organization of the pseudocode was very helpful in writing the actual method.

# What are the tradeoffs of using arrays and hashes for this challenge?
	#Arrays are good for lists with one argument. Hashes are better for updating values without 
	#changing the key.

# What does a method return?
	#It returns whatever output of the code is inside the method.

# What kind of things can you pass into methods as arguments?
	#Hashes, intergers, strings, equations, values, variables, etc.

# How can you pass information between methods?
	#Returning the output and putting it in a variable outside of the method then passing that 
	#variable to the next method. 

# What concepts were solidified in this challenge, and what concepts are still confusing?
	#Passing information between methods. How to call on methods on a variable that is being 
	#continuiously updated. Solidied use of hashes. Passing information from an array to a hash.
	#Solidied use of default values.

#Things to improve.
	#Use of default values in arguments.



