class Hamming
  VERSION = 1

  def self.compute(dna1, dna2)
    raise ArgumentError.new("Sequences must have the same length") unless dna1.length == dna2.length

    diffs = 0
    dna1.chars.each_with_index do |c, i|
      diffs +=1 if dna2.chars[i] != c
    end
    diffs
  end
end
