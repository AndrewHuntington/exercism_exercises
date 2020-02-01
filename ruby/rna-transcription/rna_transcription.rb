module Complement
  def self.of_dna(sequence)
    if sequence.empty?
      return ""
    end

    sequence.split('').map do |letter|
      case letter
      when "G"
        letter.replace("C")
      when "C"
        letter.replace("G")
      when "T"
        letter.replace("A")
      when "A"
        letter.replace("U")
      end
    end.join
  end
end
