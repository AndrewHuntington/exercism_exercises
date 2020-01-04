=begin
  This passes all the given test conditions, but something
  like ResistorColorDuo.value(["black", "brown"]) will return
  1 instead of 01.
=end

module ResistorColorDuo
  COLORS = ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"]

  def self.value array
    (COLORS.index(array[0]).to_s + COLORS.index(array[1]).to_s).to_i
  end
end
