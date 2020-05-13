class FlattenArray
  def self.flatten(array)
    array.flatten.delete_if { |e| e == nil }
  end
end
