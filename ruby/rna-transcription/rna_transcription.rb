class Complement
  VERSION = 3

  MAPPING = {
    'C' => 'G',
    'T' => 'A',
    'A' => 'U',
    'G' => 'C'
  }

  def self.of_dna(dna = '')
    ret = ''
    dna.each_char do |c|
        raise ArgumentError unless MAPPING.key?(c)
        ret << MAPPING[c]
    end
    ret
  end
end
