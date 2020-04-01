class Matrix
  def initialize(s)
    @matrix_string = s
  end

  def rows
    @matrix_string.lines(chomp: true).map { |a| a.split.map(&:to_i) }
  end

  def columns
    rows.transpose
  end
end
