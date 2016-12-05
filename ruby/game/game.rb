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
	attr_accessor :guesses

	def initialize(word)
		@word = word
		@guesses = word.length
		@last_guess = "y"
	end

	def guess(letter)

			if letter == @last_guess
				puts "You've tried that before."
			elsif @word.include? letter
				puts "YES!"
			else
				puts "NO!"
				@guesses -= 1
			end

			@last_guess = letter
	end

end
