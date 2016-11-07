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
$first_name = ""
$last_name = ""
$alias_first_name = []
$alias_last_name = []
$vowels = ["a","e","i","o","u",]
$consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z",]
$output_last_name = []
#user interface
puts "Spy Alias Generator"
puts "Please enter your first name:"
$first_name = gets.chomp.downcase
puts "Please enter your last name:"
$last_name = gets.chomp.downcase

alias_first_name = $last_name.split("")
$alias_last_name = $first_name.split("")

#swapping

#I HAVE NO IDEA WHAT AN ALIAS METHOD IS. I HAVE FOUND GARBLE THAT I CAN"T UNDERSTAND IN EXAMPLES ON THE WEB.
#I FEEL OUT OF MY DEPTH AND DEFEATED.
#I HAVE WORKED ON THIS FOR 15 HOURS AND I AM NO FURTHER THAN I WAS 14.5 HOURS AGO.

#def swap
#$output_last_name = $alias_first_name.next
#end
#debug 


p $first_name
p $last_name
p alias_first_name
swap
p alias_first_name
p output_last_name



