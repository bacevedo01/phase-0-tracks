
class Dancer
	attr_reader :name
	attr_accessor :age

	def initialize(name, age)
		@name = name
		@age = age
	end

	

# dancer = Dancer.new("Misty", 33)