class Triangle
  def initialize(triangle)
    @triangle = triangle.sort
  end

  def is_valid_triangle?
    !@triangle.any? { |side| side <= 0 } && (@triangle[0] + @triangle[1] >= @triangle[2])
  end

  def is_degenerate?
    return is_valid_triangle? if is_valid_triangle? == false
    @triangle[0] + @triangle[1] == @triangle[2]
  end

  def equilateral?
    return is_valid_triangle? if is_valid_triangle? == false
    @triangle.all?(@triangle[0])
  end

  def isosceles?
    return is_valid_triangle? if is_valid_triangle? == false
    @triangle[0] == @triangle[1] || @triangle[0] == @triangle[2] ||
      @triangle[1] == @triangle[2]
  end

  def scalene?
    return is_valid_triangle? if is_valid_triangle? == false
    !(equilateral? || isosceles?)
  end
end
