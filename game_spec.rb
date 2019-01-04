require 'rspec'
require_relative 'game'

describe "Game" do
  before do
    @game = Game.new
  end
  it "has a class called Game that is error free" do
    expect{Game.new}.to_not raise_error
  end

  it "has a function called nextSnippet" do
    expect(@game.nextSnippet(0)).to be_a Method
  end

  # it "has a function called MakeArray" do
  #
  # end
  #
  # it "has a function called startGame" do
  #
  # end
end
