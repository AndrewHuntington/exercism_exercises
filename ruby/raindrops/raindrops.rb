# frozen_string_literal: true

# Converts a number to a string, the contents of which depend
# on the number's factors
module Raindrops
  module_function

  def convert(number)
    case
    when (number % 3).zero? && (number % 5).zero? && (number % 7).zero?
      'PlingPlangPlong'
    when (number % 5).zero? && (number % 7).zero?
      'PlangPlong'
    when (number % 3).zero? && (number % 7).zero?
      'PlingPlong'
    when (number % 3).zero? && (number % 5).zero?
      'PlingPlang'
    when (number % 3).zero?
      'Pling'
    when (number % 5).zero?
      'Plang'
    when (number % 7).zero?
      'Plong'
    else
      number.to_s
    end
  end
end
