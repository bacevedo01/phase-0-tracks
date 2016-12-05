require_relative 'game'

describe Game do
  let(:game) { Game.new("word") }

  it "can store a word" do
    expect(game.word).to eq "word"
  end

  it "can store the players amount of guesses" do
  	expect(game.guesses).to eq 4
  end

end