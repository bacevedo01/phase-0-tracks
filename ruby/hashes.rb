# n phase-0-tracks/ruby/hashes.rb, pseudocode and write a program 
#that will allow an interior designer to enter the details of a given client: 
#the client's name, age, number of children, decor theme, and so on 
#(you can choose your own as long as it's a good mix of string, integer, and boolean data).

#I'll need to create a hash with the following information:
# :client_name (string value)
# :age (integer value)
# :number_of_children (integer value)
# :decor_theme (string value)
# :needs_delivery (boolean)
#I'll need to convert the human input for delivery to a boolean and back again in print out.
#I'll need to create a choice of which line to adjust.
#and update the hash and print out

#hash
$client_info = {
	client_name: " ",
	age: 0,
	number_of_children: 0,
	decor_theme: " ",
	needs_delivery: true,
}

#client input
	puts "<== Client Details ==>"
	puts "Please enter client's name FIRST LAST NAME:"
	$client_info[:client_name] = gets.chomp
	puts "Please enter client's age:"
	$client_info[:age] = gets.chomp
	puts "Please enter client's number of children:"
	$client_info[:number_of_children] = gets.chomp
	puts "Please enter client's preferred decor:"
	$client_info[:decor_theme] = gets.chomp
	puts "Does the client need delivery? y/n"
	delivery = gets.chomp
	if delivery.downcase == "y" 
		 $client_info[:needs_delivery] = true
	else $client_info[:needs_delivery] = false
	end

#Print out of information
def print_info
	puts "<== Client Info: (please review ==>"
	puts "[1] Client Name: " + $client_info[:client_name]
	puts "[2] Client Age: " + $client_info[:age]
	puts "[3] Client's number of children: " + $client_info[:number_of_children]
	puts "[4] Client's preferred decor: " + $client_info[:decor_theme]
	puts "[5] Client needs delivery? " + $client_info[:needs_delivery].to_s
end

print_info	

#Changes
puts "Would you like to change any information? [1/2/3/4/5] or None"
change = gets.chomp
if change == "1"
	puts "Please enter client's name FIRST LAST NAME:"
	$client_info[:client_name] = gets.chomp
	puts "Updated Client Information"
elsif change == "2"
	puts "Please enter client's age:"
	$client_info[:age] = gets.chomp
	puts "Updated Client Information"
elsif change == "3"
	puts "Please enter client's number of children:"
	$client_info[:number_of_children] = gets.chomp
	puts "Updated Client Information"
elsif change == "4"
	puts "Please enter client's preferred decor:"
	$client_info[:decor_theme] = gets.chomp
	puts "Updated Client Information"
elsif change == "5"
	puts "Does the client need delivery? y/n"
	delivery = gets.chomp
	if delivery.downcase == "y" 
		 $client_info[:needs_delivery] = true
	else $client_info[:needs_delivery] = false
	end
	puts "Updated Client Information"
else change.downcase == "none"
	puts "No changes made."
end


print_info


