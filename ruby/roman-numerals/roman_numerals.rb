# Exercism Ruby path: DifferenceOfSquaresTest exercise

class Integer
  DECIMALS = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1].freeze
  NUMERALS = %w[M CM D CD C XC L XL X IX V IV I].freeze

  def to_roman
    value = self
    output = ''

    DECIMALS.each.with_index do |_d, i|
      while DECIMALS[i] <= value
        output << NUMERALS[i]
        value -= DECIMALS[i]
      end
    end

    output
  end
end

module BookKeeping
  VERSION = 2
end
