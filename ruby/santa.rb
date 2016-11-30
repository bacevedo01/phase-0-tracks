
class Santa
	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		
	end

	def speak
		puts "The #{@gender} #{@ethnicity} Santa says,"
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "The #{@gender} #{@ethnicity} Santa says,"
		puts "That was a good #{cookie} cookie!" 
	end

	def reindeer_ranking(ranking)
		@ranking = ranking
		ranking  = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end

	def santa_age(age)
		@age = 0
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
end