require_relative 'game'

describe Game do
  let(:game) { Game.new("word") }

  it "can store a word" do
    expect(game.word).to eq "word"
  end

  it "can store the players amount of guesses" do
  	expect(game.guess_count).to eq 4
  end

  it "can parse the answer" do
  	expect(game.answer).to eq ["w", "o", "r", "d"]
  end

  it "can record the right answer" do
  	game.guess
  	expect(game.letter_index).to eq 0
  end
  # Changed line 30 from get.downcase.chomp to "w"

  # it "can record a wrong answer" do
  # 	game.guess
  # 	expect(game.letter_index).to eq nil
  # end
  # #Changed line 30 from get.downcase.chomp to "x"

end