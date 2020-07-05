# frozen_string_literal: true

# Returns the Scrabble score of a word
class Scrabble
  SCORES = {
    %w[A E I O U L N R S T] => 1,
    %w[D G] => 2,
    %w[B C M P] => 3,
    %w[F H V W Y] => 4,
    %w[K] => 5,
    %w[J X] => 8,
    %w[Q Z] => 10
  }.freeze

  def initialize(word)
    @word = word
  end

  def score
    0
  end
end
