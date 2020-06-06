module Hamming
  def self.compute(a, b)
    return 0 if a == b
    raise ArgumentError, "Strands must be of equal length." if a.size != b.size
    
    hamming_distance = 0

    a.split('').each_index do |index|
      hamming_distance += 1 if a[index] != b[index]
    end
  
    hamming_distance
  end
end