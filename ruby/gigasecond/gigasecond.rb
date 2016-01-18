class Gigasecond
  VERSION = 1

  def self.from(sec)
    #raise ArgumentError.new("Expect Time object") unless sec.class != Time

    sec + (10**9)
  end
end
