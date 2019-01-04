# require_relative 'game'

class Snippet
  attr_accessor :story, :nextStory
  def initialize (story, a, b, c)
    @story = story
    @nextStory = [a, b, c]

  end
end
