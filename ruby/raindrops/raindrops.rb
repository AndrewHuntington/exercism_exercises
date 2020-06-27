# frozen_string_literal: true

# Converts a number to a string, the contents of which depend
# on the number's factors
module Raindrops
  module_function

  DROPS = { 3 => 'Pling', 5 => 'Plang', 7 => 'Plong' }.freeze

  def convert(number)
    raindrop = String.new

    DROPS.each { |k, v| raindrop << v if (number % k).zero? }

    raindrop.empty? ? number.to_s : raindrop
  end
end
