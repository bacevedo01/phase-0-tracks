
#release 0

#def example
#	status1 = "ATTENTION!"
#	puts "Here is the status."
#	yield (status1)
#end

#example {|status1| puts "#{status1} Here is the updated status." }

#release 1

legends = ["White Canary", "Atom", "Heat Wave", "Vixen", "Steel", "Firestorm"]

avengers = {
	leader: "Captain America",
	scientist: "Iron Man",
	spy: "Black Widow",
	tank: "Hulk",
	dps: "Thor",
	sniper: "Hawkeye"
}

legends.each do |legend|
	puts legend + " is on the team!"
end

avengers.each do |job, hero|
	puts " #{hero} is the #{job} of the Avengers!"
end

puts "Original Data"
p legends 

legends.map! do |legend|
	legend << " Earth 1"
end

puts "New Data:"
p legends
p avengers

#release 2
#problem 1
#array version
puts "Problem 1"
puts "Array"
$release2 = [2, 3, 4, 5, 6, 7, 8, 9]
puts "Original:"
p $release2

def delete_5 
	$release2.delete_if { |x| x < 5}
end

delete_5
puts "New Data:"
p $release2

#problem 1
#hash version
puts "Hash"
$release2_hash = { 
	one: 2,
	two: 3,
	three: 4,
	four: 5,
	five: 6,
}
puts "Original:"
p $release2_hash

def delete_hash
	$release2_hash.delete_if {|key, value| key >= :four }
end

delete_hash
puts "New Data:"
p $release2_hash

#problem 2
#array version
puts "Problem 2"
puts "Array"
$release2 = [2, 3, 4, 5, 6, 7, 8, 9]
puts "Original:"
p $release2

def keep_4
	$release2.keep_if { |a| a < 4 } 
end

keep_4
puts "New Data:"
p $release2

#problem 2
#hash version
puts "Hash"
$release2_hash = { 
	one: 2,
	two: 3,
	three: 4,
	four: 5,
	five: 6,
}
puts "Original:"
p $release2_hash

def delete_hash
	$release2_hash.keep_if {|key, value| key >= :four }
end

delete_hash
puts "New Data:"
p $release2_hash

#problem 3
#array version
puts "Array"
puts "Problem 3"
$release2 = [2, 3, 4, 5, 6, 7, 8, 9]
puts "Original:"
p $release2

def filter 
	$release2.select! do |number|
	number >5
	end
end

filter
puts "New Data:"
p $release2

#problem 3
#hash version
puts "Hash"
$release2_hash = { 
	one: 2,
	two: 3,
	three: 4,
	four: 5,
	five: 6,
}
puts "Original:"
p $release2_hash

def delete_hash
	$release2_hash.select! {|key, value| key >= :two }
end

delete_hash
puts "New Data:"
p $release2_hash

puts "Problem 4"
$release2 = [2, 3, 4, 5, 6, 7, 8, 9]
puts "Original:"
p $release2

def removal_machine
		i = 0
		if $release2.bsearch { |x| x >= 2 } == true
			$release2.select! do |add|
				add.next
			end
		else $release2.bsearch { |x| x >= 2 } == false
			puts "Stop"
		end
end
		
removal_machine
puts "New Data:"
p $release2

