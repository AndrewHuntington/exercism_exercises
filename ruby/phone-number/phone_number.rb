module PhoneNumber
  def self.clean(number)
    cleaned_number = number.gsub(/\D/, "").delete_prefix("1")
    is_valid_range = !cleaned_number[0].match?(/0|1/) && !cleaned_number[3].match?(/0|1/)

    cleaned_number.length == 10 && is_valid_range ? cleaned_number : nil
  end
end
