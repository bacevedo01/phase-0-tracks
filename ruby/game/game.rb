#Hangman game
#Player 1 can enter a word and it is stored
#Player 2 can guess the word and has as many guesses as letters in the word.
#Player can recieve feedback for their guess. 
#Player can recieve postive feedback for a good guess and does not lose a guess.
#Player can recieve negative feedback for a wrong guess and loses a guess.
#Player can recieve a congratulatory message for correctly guessing the word.
#Player can recieve a negative message for running out of guesses.


class Game
	attr_accessor :word
	attr_accessor :answer
	attr_accessor :guess_count
	attr_accessor :final_answer
	attr_accessor :letter_index
	attr_accessor :result

	def initialize(word)
		@word = word
		@answer = word.split("").map(&:downcase)
		@guess_count = @answer.length
		@final_answer = @word.gsub(/[a-zA-Z]/, "_").split("")
	end

	def guess
		loop do
		  puts "The answer is: #{@final_answer.join}"
		  puts "You have #{@guess_count} guesses remaining."
		  puts "Guess a letter"
		  # @guess = "w"
		  # @guess = "x"

		  if @answer.include?(@guess)
		    @letter_index = @answer.each.find_index(@guess)
		    @answer[@letter_index] = ""
		    @final_answer[@letter_index] = @guess
		    @solution = @final_answer.join
		  else
		    puts "Sorry, please try again."
		    @guess_count -= 1
		  end

		  if @guess_count == 0
		    puts "You lose."
		    break
		  end

		  if @solution == @word.downcase
		    puts "You win!"
		    break
		  end

		end
	end
end


#User Interface

# puts "Welcome to the Word Game!"
# puts "Player 1, type a word to be guessed."
# word = gets.downcase.chomp
# game = Game.new(word)

# game.guess





