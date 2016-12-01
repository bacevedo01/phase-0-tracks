
class Santa
	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@age = 0
		@ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end

	def speak
		puts "The #{@gender} #{@ethnicity} Santa says,"
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "The #{@gender} #{@ethnicity} Santa says,"
		puts "That was a good #{cookie} cookie!" 
	end

	def celebrate_birthday
		@age += 1
	end

	def get_made_at (reindeer)
		n = @ranking.index(reindeer)
		@ranking.insert(-1, @ranking.delete_at(n))
	end

	def change_gender(new_gender)
		@gender = new_gender
	end

	def age
		@age
	end

	def ethnicity
		@ethnicity
	end
end

santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")

# santa = Santa.new
# santa.speak
# santa.eat_milk_and_cookies("Peanut Butter")

santas.each do |x|
	x.speak
	x.eat_milk_and_cookies("chocolate chip")
	puts "This Santa is #{x.age} years old!"
end



