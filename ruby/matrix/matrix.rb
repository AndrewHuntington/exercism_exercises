class Matrix
  def initialize(s)
    @matrix_string = s
  end

  def rows
    @matrix_string.split(/\n/).map(&:split).map { |x| x.map(&:to_i) }
  end

  def columns
    columns = []

    rows.each_with_index do |item, index|
      columns[index] = rows.map { |x| x[index] }
    end

    columns
  end
end
