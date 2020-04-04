class Grains
  def self.square(n)
    raise ArgumentError, "#{n} is out-of-bounds." if n <= 0 || n > 64

    return 2**(n-1)
  end

  def self.total
    total_grains = 0

    1.upto(64) do |n|
      total_grains += Grains.square(n)
    end

    total_grains
  end
end
