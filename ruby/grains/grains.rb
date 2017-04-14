class Grains
  def self.square(square)
    raise ArgumentError if square <= 0
    raise ArgumentError if square > 64
    2**(square-1)
  end

  def self.total
    total = 0
    (1..64).each { |i| total += (2**(i-1))}
    total
  end
end

module BookKeeping
  VERSION = 1
end
