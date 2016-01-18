class Hamming
  VERSION = 1

  def self.compute(dna1, dna2)
    raise ArgumentError.new("Sequences must have the same length") unless dna1.length == dna2.length

    (dna1.chars - dna2.chars).length
  end
end
