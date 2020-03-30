# second revision
# made the code a little cleaner

class Triangle
  def initialize(triangle)
    @triangle = triangle.sort
  end

  def is_valid_triangle?
    @triangle.none? { |side| side <= 0 } && (@triangle[0] + @triangle[1] >= @triangle[2])
  end

  def is_degenerate?
    @triangle[0] + @triangle[1] == @triangle[2] && is_valid_triangle?
  end

  def equilateral?
    @triangle.all?(@triangle[0]) && is_valid_triangle?
  end

  def isosceles?
    (@triangle[0] == @triangle[1] || @triangle[0] == @triangle[2] ||
      @triangle[1] == @triangle[2]) && is_valid_triangle?
  end

  def scalene?
    !(equilateral? || isosceles?) && is_valid_triangle?
  end
end
