class Year
  def self.leap?(year)
    return false unless (year % 4).zero?
    return true  if (year % 400).zero?
    return false if (year % 100).zero?
    true
  end
end

module BookKeeping
  VERSION = 2
end
