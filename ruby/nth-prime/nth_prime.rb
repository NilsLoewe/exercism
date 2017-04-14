# Exercism Ruby path: nth prime exercise
class Prime
  def self.nth(number)
    raise ArgumentError if number < 1
    primes = 0
    counter = 0
    while primes <= number do
      counter +=1
      primes +=1 if prime?(counter)
    end
    counter
  end

  def self.prime?(num)
    prime = true
    for r in 2..Math.sqrt(num).to_i
      if (num % r == 0)
        prime = false
        break
      end
    end
    return prime
  end
end

module BookKeeping
  VERSION = 1
end
