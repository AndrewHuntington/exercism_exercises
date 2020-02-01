# Better solution -------
module Year
  def self.leap?(year)
    year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)
  end
end

# My original solution --------
# module Year
#   def self.leap?(year)
#     return true if year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)
#
#     false
#   end
# end
