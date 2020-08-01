# frozen_string_literal: true

# Takes a string and returns a boolean value based on if it is valid
# per the Luhn formula
module Luhn
  module_function

  def valid?(value)
    return false if value.delete(' ').match?(/\D/) ||
                    value.delete(' ').length <= 1

    numbers = value.delete(' ').reverse.scan(/\d/)

    new_value = run_calculations(numbers)

    new_value.zero? ? true : false
  end

  def run_calculations(values)
    values.each.with_index do |digit, index|
      next if index.even?

      if digit.to_i * 2 < 10
        values[index] = (digit.to_i * 2).to_s
      else
        values[index] = (digit.to_i * 2 - 9).to_s
      end
    end.reverse.map(&:to_i).reduce(:+) % 10
  end
end
