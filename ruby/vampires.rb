#pseudocode
#Need a new employee questionaire for release 1.
#It needs to ask the following questions:
#What is your name?
#How old are you?
#What year were you born?
#Our company cafeteria serves garlic bread. Should I order some for you?
#Would you like to enroll in the company's health insurance?

#timer

	i=0
	puts "How many employees would you like to process?"
	employees = gets.chomp.to_i
	while i != employees do

	puts "What is your name?"
	$name = gets.chomp
	puts "How old are you?"
	$age = gets.chomp.to_i
	puts "What year were you born?"
	$year = gets.chomp.to_i
	puts "Our company cafeteria serves garlic bread. Should I order some for you? Y/N"
	$garlic = gets.chomp.downcase
	puts "Would you like to enroll in the company's health insurance? Y/N"
	$health = gets.chomp.downcase

  	if ($name == "Drake Cula" or $name == "Tu Fang")
  		puts "Definitely a vampire."
 	elsif (2016 - $year == $age) && ($garlic == "y" && $health == "y")
 		puts "Probably not a vampire."
 	elsif (2016 - $year != $age) && ($garlic == "n" && $health == "y") or ($garlic == "y" && $health == "n")
 		puts "Probably a vampire."
 	elsif (2016 - $year != $age) && ($garlic == "n" && $health == "n")
 		puts "Almost certainly a vampire."
 	else
 		"Results Inconclusive."
 	end

 	done = "done"
 	sunshine = "sunshine"
 	allergy = ""
 	while allergy.downcase != done 
 		puts "Please list your allergies."
 		puts "Type 'done' when finished."
 		allergy = gets.chomp
 		if allergy.downcase == "sunshine"
 			puts "Probably a Vampire."
 			allergy = done
 		else allergy.downcase != done 
 		end
 	end

 	puts "Raw Data"
 	puts $name
 	puts $age
 	puts $year
 	puts $garlic
 	puts $health
 	i += 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
	


