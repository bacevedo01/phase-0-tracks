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

client_info = {
	client_name: " ",
	age: 0,
	number_of_children: 0,
	decor_theme: " ",
	needs_delivery: true,
}

#client input
puts "Client Detail"
puts "Please enter client's name FIRST LAST NAME:"
client_info[:client_name] = gets.chomp
puts "Please enter client's age:"
client_info[:age] = gets.chomp
puts "Please enter client's number of children:"
client_info[:number_of_children] = gets.chomp
puts "Please enter client's perferred decor:"
client_info[:decor_theme] = gets.chomp
puts "Does the client need delivery? y/n"
delivery = gets.chomp
if delivery.downcase == "y" 
	client_info[:needs_delivery] = true
else client_info[:needs_delivery] = false
end
p client_info[:client_name]
p client_info[:age]

