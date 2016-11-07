# Spy name swap objectives
#Swap first and last name
#Change all the vowels to the next vowel.
#Change all the consonants to the next consonant.

#create an input for for first and last names.
#split each letter into an array and downcase
#determine if it is an vowel or a consonant.
#create arrays of vowels and consonants
#determine the index of the vowel in the array and return the next index value
#determine the index of the consonant in the array and return the next index value.
#loop through all the letters of the first name 
#loop through all the letters of the last name
#put those values in the new last name and new first accordingly.
#Upcase the first index of each name.
#join the array into one value.
#return the new name.

#define variables
# $first_name = ""
# $last_name = ""
# $alias_first_name = []
# $alias_last_name = []
# $vowels = ["a","e","i","o","u",]
# $consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z",]
# $output_last_name = []

	# puts "Please enter your last name:"
	# $last_name = gets.chomp.downcase

	# alias_first_name = $last_name.split("")
	# $alias_last_name = $first_name.split("")
#definitions
passwords = []
string =""
done = "done"
#swapping
	def change_vowel (string)
	  vowels_a = %w[a e i o u]
	  vowels_A = %w[A E I O U]


	  stringarray = string.split("")

	 resultarray = stringarray.map do |letter|
	  if vowels_a.include? letter or vowels_A.include? letter
	    "X"
	  else
	    letter
	  end
	end
	  $string2 = resultarray.join("")
	end

# #user interface

while string != done
	puts "Spy Alias Generator"
	puts "Please enter your name or Type [done] when finished."
	string = gets.chomp
	if string == done
		puts " #{passwords.length} codenames have been made:"
		puts passwords
		break
	else
	 change_vowel(string)
	 puts "Your no vowel codename is:"
	 p $string2
	 passwords << " Agent #{string} is known as: #{$string2}"
	end
end





