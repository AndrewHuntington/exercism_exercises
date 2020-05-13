module ArmstrongNumbers
  def self.include?(number)
    comparasion_number = number.digits.reduce(0) do |result, item|
      result + item**number.digits.length
    end

    comparasion_number == number
  end
end
