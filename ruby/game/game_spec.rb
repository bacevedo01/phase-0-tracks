require_relative 'game'

describe Game do
  let(:game) { Game.new("word") }

  it "can store a word" do
    expect(game.word).to eq "word"
  end

  it "can store the players amount of guesses" do
  	expect(game.guesses).to eq 4
  end

  it "can record guesses that are correct" do
  	game.guess("o")
  	expect(game.guesses).to eq 4
  end

   it "can record guesses that are incorrect" do
  	game.guess("x")
  	expect(game.guesses).to eq 3
  end

  	it "can record multiple guesses of the same letter" do
  		game.guess('y')
  		expect(game.guesses).to eq 4
  end

end