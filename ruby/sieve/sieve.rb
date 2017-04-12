# Exercism Ruby path: DifferenceOfSquaresTest exercise
require 'prime'

class Sieve
  def initialize(num = 5)
    @max = num
    @primes = []
    (2..num).each {|n| @primes << n } if num >= 2
  end

  def primes
    @primes.each { |n| check_prime(n) }
  end

  def check_prime(num)
    remove(num) if Prime.prime?(num)
  end

  def remove(num)
    val = num+num
    while val <= @max do
      @primes.delete(val)
      val += num
    end
  end
end

module BookKeeping
  VERSION = 1
end
