
class Dancer
	attr_reader :name
	attr_accessor :age
	attr_accessor :card

	def initialize(name, age)
		@name = name
		@age = age
		@card =[]
		@begin_next_dance = ""
	end

	def name
		@name 
	end

	def age
		@age
	end

	def pirouette
		@pirouette = "*twirls*"
	end

	def bow
		@bow = "*bows*"
	end

	def queue_dance_with(dancer)
		@card << dancer
	end

	def begin_next_dance
		@card[0] = "Now dancing with " + @card[0] + "."
		end_dance
	end

	def end_dance
		@card.shift
	end

	def leap
		@leap = "*leaps in air*"
	end

end
	
# dancer = Dancer.new("Misty", 33)
# # # # p dancer.age 
# # # # p dancer.name
# # # # dancer.age = 34
# # # # p dancer.age
# dancer.queue_dance_with("Mike")
# p dancer.card
# dancer.queue_dance_with("George")
# p dancer.card
# dancer.begin_next_dance

# p dancer.card
	
