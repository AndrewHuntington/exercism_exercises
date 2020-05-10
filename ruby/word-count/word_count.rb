class Phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    @phrase.downcase.split(/,|\s|\n/).reduce(Hash.new(0)) do |hash, word|
      word.gsub!(/\W/, '') unless word.index(/[\S]'[\S]/)
      hash[word] += 1 unless word.empty?
      hash
    end
  end
end
