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

	def bite(n)
		puts "Grrrr...brains."*n
	end

	def wander(n)
		puts "Shuffles..."*n
	end

	def chomp
		puts "Chomp, Chomp, Chomp"
	end
end

 # n = 1
 # zombie_horde = []

 # loop do	
 # 	zombie_horde << Zombie.new
 # 	if n == 50
 # 	break
 # 	end
 # 	n += 1
 # end

	# zombie_horde.each do |x|
	# 	x.bite(1)
	# 	x.chomp
	# 	x.wander(2)
	# end

#p zombie_horde





	zombie_horde = {}
 	loop do
	puts "Please create some zombies. Type [done] when finished"
	input = gets.chomp

	if input.downcase == "done"
		break
	end
	zombie_horde[input] = Zombie.new
	end
	
	zombie_horde.each do |x,y|
	puts "#{x} says" 
	y.bite(2)
	puts "#{x} grabs a survivor and"
	y.chomp
	puts "#{x} then"
	y.wander(3)
	end

	#p zombie_horde
	




