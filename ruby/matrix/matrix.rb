class Matrix
  def initialize(s)
    @matrix_string = s
  end

  def rows
    @matrix_string.split(/\n/).map(&:split).map { |a| a.map(&:to_i) }
  end

  def columns
    columns = []

    rows.each_index do |index|
      columns[index] = rows.map { |a| a[index] }
    end

    columns
  end
end
