# Exercism Ruby path: Raindrops exercise
class Raindrops
  def self.convert(raindrops = 0)
    ret = ''
    ret += 'Pling' if factor?(raindrops, 3)
    ret += 'Plang' if factor?(raindrops, 5)
    ret += 'Plong' if factor?(raindrops, 7)
    ret == '' ? raindrops.to_s : ret
  end

  def self.factor?(raindrops, factor)
    (1..raindrops).select { |n| (raindrops % n).zero? }.include?(factor)
  end
end

module BookKeeping
  VERSION = 3
end
