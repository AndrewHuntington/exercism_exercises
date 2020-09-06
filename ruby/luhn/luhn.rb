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

  def valid?
    # Gets rid of bogus data before performing the Luhn check
    return false if @value.match?(/\D/) || @value.length <= 1

    luhn?
  end

  def digits
    @digits ||= @value.scan(/\d/)
  end

  def luhn?
    luhn = digits.each.with_index do |digit, index|
      next if index.even?

      doubled_digit = digit.to_i * 2

      if doubled_digit < 10
        digits[index] = doubled_digit.to_s
      else
        digits[index] = (doubled_digit - 9).to_s
      end
    end.reverse.map(&:to_i).reduce(:+) % 10

    luhn.zero?
  end
end
