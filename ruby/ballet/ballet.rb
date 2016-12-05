
class Dancer
	attr_reader :name
	attr_accessor :age

	def initialize(name, age)
		@name = name
		@age = age
	end

	def name
		@name 
	return @name
	end

	def age
		@age
		return @age
	end

end
	

# dancer = Dancer.new("Misty", 33)
# p dancer.age 
# p dancer.name
# dancer.age = 34
# p dancer.age
	
