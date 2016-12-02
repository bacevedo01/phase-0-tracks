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
	grocery_array = grocery_string.split(",")
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

# input:
# steps:
# output:


