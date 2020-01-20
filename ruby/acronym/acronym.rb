module Acronym
  def self.abbreviate(words)
    words.split(/-|\s/).map do |word|
      if !word.empty?
        word[0].upcase
      end
    end.join
  end
end
