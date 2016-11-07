#Write a method that takes an array of integers and an integer to search for. 
#The method should return the index of the item, or nil if the integer is not present in the array. 
#Don't use built-in array methods like .index. You are allowed to use .length and .each.

#Release 0
#$arr = [42, 89, 23, 1]
#$index_value = ""


# def search_array(number)
# 	i = 0
#  	until i == $arr.length do 
#  		if $arr[i] == number
#  		$index_value = i
#  		elsif
#  			$arr.include?(number) == false
#  			$index_value = nil
#  		end
#  		i += 1
#  	end
# end


# search_array(1)
# puts "First Value"
# p $index_value

# search_array(23)
# puts "Second Value"
# p $index_value

# search_array(500)
# puts "Third Value"
# p $index_value

# search_array(9000)
# puts "Fourth Value"
# p $index_value

# puts "Array Length"
# p $arr.length

#Release 1
# def fibSeq(number)
#  sequence = [0]

#   (number).times do |i|
#     if i==0
#       sequence[i] = 0
#     elsif i==1
#       sequence[i] = 1
#     else
#       sequence[i] = sequence[i-1] + sequence[i-2]
#     end  
#   end
#   	return sequence[0..number]
# end


#puts "Fib"
#p fibSeq(6)
#p fibSeq(100)

#Release 2
#Bubble Sort

#array = [2,31,4,5,64,7,12,3,45]
array = [ "A", "f", "t", "b", "d", "a"]
p array

def bubble_sort(array)
  n = array.length
  loop do
    swapped = false

    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end

    break if not swapped
  end

  array
end

p bubble_sort(array)


#Form a conceptual understanding of how the algorithm works. 
#What helps you grasp it? Testing, reviewing the steps and guessing what they do. 
#Do visualizations help? Yes because you can focus on each part of the code and how it contributes line by line.
#How can you find the right materials for yourself? Versus searches help. Referencing books and websites. Talking with 
#other rubists and discussing code.
#Notice your emotional state as you tackle this algorithm: 
#do you feel frustrated, underqualified, stupid, or overwhelmed? 
#Or is it more like excitement and curiosity? 
#How do you think these feelings affect your ability to learn? 




