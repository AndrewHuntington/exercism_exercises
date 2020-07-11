# frozen_string_literal: true

# Calculates the Scrabble score of a given word
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
    return 0 if @word.nil?

    score = 0

    @word.upcase.each_char do |char|
      SCORES.each do |k, v|
        score += v if k.include? char
      end
    end

    score
  end

  def self.score(word)
    new(word).score
  end
end
