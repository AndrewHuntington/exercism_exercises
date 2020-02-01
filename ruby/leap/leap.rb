module Year
  def self.leap?(year)
    return true if year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)

    false
  end
end
