class Series
  def initialize(digits)
    @digits = digits
  end

  def slices(n)
    raise ArgumentError, "Argument passed is too large." if n > @digits.length
    series_array = []
    i = 0

    while (i + n) <= @digits.length
      series_array << @digits[i...i+n]

      i += 1
    end

    series_array
  end
end
