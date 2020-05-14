class Darts
  def initialize(x, y)
    @x = x
    @y = y
  end

  def score
    coord = find_coord

    case
    when coord > 10
      return 0
    when coord > 5 && coord <= 10
      return 1
    when coord <= 5 && coord > 1
      return 5
    else
      return 10
    end
  end

  def find_coord
    # determine if the coordinates given are within the circles
    Math.sqrt(@x**2 + @y**2)
  end
end
