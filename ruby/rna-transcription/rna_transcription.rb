module Complement
  DNA = "CGTA".freeze
  RNA = "GCAU".freeze

  def self.of_dna(sequence)

    # Using the String#tr
    sequence.split('').map do |letter|
      letter.tr(DNA, RNA)
    end.join

    # My original answer
    #
    # if sequence.empty?
    #   return ""
    # end

    # sequence.split('').map do |letter|
    #   case letter
    #   when "G"
    #     letter.replace("C")
    #   when "C"
    #     letter.replace("G")
    #   when "T"
    #     letter.replace("A")
    #   when "A"
    #     letter.replace("U")
    #   end
    # end.join
  end
end
