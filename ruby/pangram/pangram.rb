module Pangram
  def self.pangram?(sentence)
    ('a'..'z').each do |x|
        return false unless sentence.downcase.include?(x)
    end

    true
  end
end
