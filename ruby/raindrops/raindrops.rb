# frozen_string_literal: true

# Converts a number to a string, the contents of which depend
# on the number's factors
module Raindrops
  module_function

  def convert(number)
    raindrop = String.new

    raindrop << 'Pling'    if (number % 3).zero?
    raindrop << 'Plang'    if (number % 5).zero?
    raindrop << 'Plong'    if (number % 7).zero?
    raindrop = number.to_s if raindrop.empty?

    raindrop
  end
end
