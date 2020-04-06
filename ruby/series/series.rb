class Series
  def initialize(digits)
    @digits = digits
  end

  def slices(n)
    raise ArgumentError, "Argument passed is too large." if n > @digits.length
    number_series = []

    @digits.chars.each_cons(n) { |a| number_series << a.join }
    number_series
  end
end
