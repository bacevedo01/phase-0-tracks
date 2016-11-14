# class Puppy
#   def initialize
#   	puts "Initializing new puppy instance."
#   end

#   def fetch(toy)
#     puts "I brought back the #{toy}!"
#     toy
#   end

#   def speak(n)
#   	puts "Woof!"*n
#   	n
#   end

#   def roll_over
#   	puts "Rolls over."
#   end

#   def dog_years(age)
#   	dog_new = 0
#   	dog_new = age*9
#   	puts "The puppy is #{dog_new}!"
#   	age
#   	dog_new
#   end

#   def play_dead
#   	puts "Falls over and plays dead!"
#   end

# end

	
# fido = Puppy.new
# fido.fetch("ball")
# fido.speak(4)
# fido.roll_over
# fido.dog_years(5)
# fido.play_dead

class Zombie
	def initialize
		puts "Rising from the grave!"
		
	end

	def bite
		puts "Grrrr...brains."
	end

	def wander(n)
		puts "Shuffles..."*n
		n
	end
end

zombie = Zombie.new
zombie.bite
zombie.wander(2)

	zombie_horde = Array.new
	done = "done"
 	zombie_maker = ""
 	while zombie_maker != done 
 		puts "Please create some zombies."
 		puts "Type 'done' when finished."
 		zombie_maker = gets.chomp
 		if zombie_maker == gets.chomp
 			puts "Creating zombie"
 		zombie_maker = Zombie.new
 		zombie_horde << zombie_maker
 		elsif zombie_maker != done
 		end
 	end




