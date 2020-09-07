# frozen_string_literal: true

# Takes a string and returns a boolean value based on if it is valid
# per the Luhn formula
class Luhn
  def self.valid?(value)
    Luhn.new(value).valid?
  end

  def initialize(value)
    @value = value.delete(' ').reverse
  end

  def input_is_valid?
    !@value.match?(/\D/) && @value.length > 1
  end

  def valid?
    input_is_valid? && luhn?
  end

  def digits
    @digits ||= @value.scan(/\d/).map(&:to_i)
  end

  def doubled_digit(digit, index)
    doubled_digit = digit * 2

    digits[index] = if doubled_digit < 10
                      doubled_digit
                    else
                      doubled_digit - 9
                    end
  end

  def luhn?
    luhn = digits.map.with_index do |digit, index|
      index.even? ? digit : doubled_digit(digit, index)
    end.reduce(:+) % 10

    luhn.zero?
  end
end
