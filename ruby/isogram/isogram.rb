# frozen_string_literal: true

# Checks if a string is an isogram (returns a boolean value)
# Ignores case, spaces, and hyphens
module Isogram
  module_function

  def isogram?(word)
    word = word.downcase.delete(' -')
    word == word.split('').uniq.join
  end
end
