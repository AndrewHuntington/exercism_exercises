class Squares
  def initialize(i)
    @range_end = i
  end

  def square_of_sum
    (1..@range_end).reduce{ |sum, n| sum + n }**2
  end

  def sum_of_squares
    (1..@range_end).reduce{ |sum, n| sum + n**2 }
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
