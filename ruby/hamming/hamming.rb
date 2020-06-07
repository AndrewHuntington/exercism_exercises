module Hamming
  def self.compute(a, b)
    return 0 if a == b
    raise ArgumentError, "Strands must be of equal length." if a.size != b.size

    a.each_char.with_index.reduce(0) do |acc, (c, i)|
      c != b[i] ? acc + 1 : acc
    end
  end
end