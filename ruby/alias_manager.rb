# Spy name swap objectives
#Swap first and last name
#Change all the vowels to the next vowel.
#Change all the consonants to the next consonant.

#create an input for for first and last names.
#split each letter into an array and downcase

#create a hash with the actual alphabet as the key and the changed alphabet as the value.
#loop through all the letters of the first name, using the letters as the key return value of the 
#letter
#loop through all the letters of the last name and do the same
#put those values in the new last name and new first accordingly.
#Upcase the first index of each name.
#join both first and last name into one value.
#return the new name.

#hash alphabet key

alphabet = { "a" => "e", "b" => "c", "c" => "d", "d" => "f", "e" => "i", "f" => "g", "g" => "h",
			 "h" => "j", "i" => "o", "j" => "k", "k" => "l", "l" => "m", "m" => "n", "n" => "p",
			 "o" => "u", "p" => "q", "q" => "r", "r" => "s", "s" => "t", "t" => "v", "u" => "a",
			 "v" => "w", "w" => "x", "x" => "y", "y" => "z", "z" => "b"
			}

# p alphabet
# p alphabet["a"]
# p alphabet["b"]
# p alphabet["e"]
output = ""
output2 = ""
new_aliases = {}
real_name = ""
loop do 
	puts "Alias Manager: Enter as many aliases as you want."
	puts "Type [done] for your first name when finished."
	puts "Enter your first name."
		first_name = gets.chomp.downcase

	if first_name == "done"
		break
	end

	puts "Enter your last name."
		last_name = gets.chomp.downcase
	
	new_last_name = first_name.split("")
	new_first_name = last_name.split("")

	new_last_name.each do |x|
		output << alphabet[x]
		output[0] = output[0].capitalize
	end

	new_first_name.each do |x|
		output2 << alphabet[x]
		output2[0] = output2[0].capitalize
	end

	first_name[0] = first_name[0].capitalize
	last_name[0] = last_name[0].capitalize
	real_name = first_name + last_name
	real_name = real_name.gsub(/(?<=[a-z])(?=[A-Z])/, ' ')

	new_alias = output2 + output
	new_alias = new_alias.gsub(/(?<=[a-z])(?=[A-Z])/, ' ')

	new_aliases[real_name] = new_alias

	puts "Your new name is #{new_alias}!"

	output = ""
	output2 = ""
end


new_aliases.each do |real_name, new_alias| 
	puts "#{real_name} is #{new_alias}."
end



