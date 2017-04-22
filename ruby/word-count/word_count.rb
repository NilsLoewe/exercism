class Phrase
  def initialize(phrase)
    @words = split_string(phrase)
  end

  def word_count
    ret = {}
    @words.each { |word| ret.key?(word) ? ret[word] += 1 : ret[word] = 1 }
    ret
  end

  private

  def split_string(phrase)
    words = phrase.downcase.split(/[\s,]+/)
    words.each do |word|
      word.gsub!(/\A"|"\Z/, '')
      word.gsub!(/\A'|'\Z/, '')
      word.gsub!(/[^'0-9A-Za-z]/, '')
    end
    words
  end
end

module BookKeeping
  VERSION = 1
end
