
class Santa
	attr_reader :age, :ethnicity, :ranking
	attr_accessor :gender

	def initialize(gender, ethnicity, age)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@age = age
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
		puts "Happy Birthday, Santa!"
		@age += 1
	end

	def get_made_at (reindeer)
		n = @ranking.index(reindeer)
		@ranking.insert(-1, @ranking.delete_at(n))
		p @ranking
	end

								# def change_gender(new_gender)
								# 	@gender = new_gender
								# end

								# def age
								# 	@age
								# end

								# def ethnicity
								# 	@ethnicity
								# end

								# def ranking
								# 	@ranking
								# end

end

								# santas = []
								# santas << Santa.new("agender", "black")
								# santas << Santa.new("female", "Latino")
								# santas << Santa.new("bigender", "white")
								# santas << Santa.new("male", "Japanese")
								# santas << Santa.new("female", "prefer not to say")
								# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
								# santas << Santa.new("N/A", "N/A")
								#santa = Santa.new("male", "white", 35)
								# # santa.speak
								# # santa.eat_milk_and_cookies("Peanut Butter")

								# santas.each do |x|
								# 	x.speak
								# 	x.eat_milk_and_cookies("chocolate chip")
								# 	puts "This Santa is #{x.age} years old!"
								# end

								#santa.get_made_at("Rudolph")
								#santa.get_made_at("Donner")
								#santa.celebrate_birthday

	genders = ["male", "female", "gender fluid", "bigender"]
	ethnicities = ["white", "black", "asian", "native american", "hispanic", "N/A"]

#santa generator
	100.times do
		santa = Santa.new(genders.shuffle.sample, ethnicities.shuffle.sample, rand(140))
		puts "SantaCon welcomes a #{santa.gender}, #{santa.ethnicity} Santa that is #{santa.age} years old!"
	end





