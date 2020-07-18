# frozen_string_literal: true

# Takes a string and returns a boolean value based on if it is valid
# per the Luhn formula
module Luhn
  def self.valid?(value)
    return false if value.delete(' ').match?(/\D/) ||
                    value.delete(' ').length <= 1

    numbers = value.delete(' ').scan(/\d/)

    binding.pry

    numbers.each.with_index do |digit, index|
      if index.odd?
        if digit * 2 < 10
          binding.pry
          digit * 2
        else
          binding.pry
          digit * 2 - 9
        end
      end
    end
  end
end
