# frozen_string_literal: true

# Takes a string and returns a boolean value based on if it is valid
# per the Luhn formula
class Luhn
  def self.valid?(value)
    Luhn.new(value).valid?
  end

  def initialize(value)
    @value = value.delete(' ')
  end

  def valid?
    return false if @value.match?(/\D/) || @value.length <= 1

    clean_value
    luhn?
  end

  def clean_value
    @cleaned_value = @value.reverse.scan(/\d/)
  end

  def luhn?
    @luhn = @cleaned_value.each.with_index do |digit, index|
      next if index.even?

      if digit.to_i * 2 < 10
        @cleaned_value[index] = (digit.to_i * 2).to_s
      else
        @cleaned_value[index] = (digit.to_i * 2 - 9).to_s
      end
    end.reverse.map(&:to_i).reduce(:+) % 10

    @luhn.zero?
  end
end
