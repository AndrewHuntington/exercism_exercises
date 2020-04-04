# Cleaned up solution ---
class Grains
  NUMBER_OF_SQUARES = 64

  class << self
    def square(n)
      raise ArgumentError, "#{n} is out-of-bounds." if n <= 0 ||
        n > NUMBER_OF_SQUARES

      2**(n-1)
    end

    def total
      (2**NUMBER_OF_SQUARES) - 1
    end
  end
end

# Original solution ---
# class Grains
#   def self.square(n)
#     raise ArgumentError, "#{n} is out-of-bounds." if n <= 0 ||
#       n > 64
#
#     2**(n-1)
#   end
#
#   def self.total
#     total_grains = 0
#
#     1.upto(64) do |n|
#       total_grains += Grains.square(n)
#     end
#
#     total_grains
#   end
# end
