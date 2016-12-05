
word = "Hidden"
answer = word.split("").map(&:downcase)
guess_count = answer.length
final_answer = word.gsub(/[a-zA-Z]/, "_").split("")
last_letter = ""

loop do
  puts "The sentence is: #{final_answer.join}"
  puts "You have #{guess_count} guesses remaining."
  puts "Guess a letter"
  guess = gets.downcase.chomp

  if answer.include?(guess)
    letter_index = answer.each.find_index(guess)
    answer[letter_index] = ""
    final_answer[letter_index] = guess
    solution = final_answer.join
  else
    puts "Sorry, that letter isn't the right answer, please try again."
    guess_count -= 1
  end

  if guess_count == 0
    puts "You lose."
    break
  end
  if solution == word.downcase
    puts "You win!"
    break
  end

end
