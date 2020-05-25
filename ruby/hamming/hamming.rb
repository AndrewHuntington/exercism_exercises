module Hamming
  def self.compute(a, b)
    return 0 if a == b
    raise ArgumentError, "Strands must be of equal length." if a.size != b.size
    
    hamming_distance = 0
    index = 0 

    while index < b.size
      hamming_distance += 1 if a[index] != b[index]
      index += 1
    end
  
    hamming_distance
  end
end