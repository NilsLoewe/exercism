class Pangram
  def self.pangram?(phrase)
    return false if phrase.empty?
    ('a'..'z').all? { |word| phrase.downcase.include? (word) }
  end
end

module BookKeeping
  VERSION = 4
end
