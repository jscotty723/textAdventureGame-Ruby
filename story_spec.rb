require 'rspec'
require_relative 'story'

describe "Snippet" do
  before do
    snippet = Snippet.new("klsjdf", 1,2,3)
  end
  it "has a class called Snippet that is error free" do
    expect{Snippet.new("ksjdhf", 1,2,3)}.to_not raise_error
  end
end
