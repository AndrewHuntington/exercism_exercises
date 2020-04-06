class Series
  def initialize(digits)
    @digits = digits
  end

  def slices(n)
    raise ArgumentError, "Argument passed is too large." if n > @digits.length

    @digits.chars.each_cons(n).map { |a| a.join }
  end
end
