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
puts "Enter a letter."
first_name = gets.chomp
new_last_name = first_name.split("")
p new_last_name

new_last_name.each do |x|
	output << alphabet[x]
end

p output

#puts "#{alphabet[first_name]} is the answer"




