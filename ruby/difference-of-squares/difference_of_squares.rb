# Exercism Ruby path: DifferenceOfSquaresTest exercise
class Squares
  def initialize(num = 5)
    @num = num
  end

  def square_of_sum
    square_of_sum = 0
    (0..@num).map { |n| square_of_sum += n }
    square_of_sum*square_of_sum
  end

  def sum_of_squares
    sum_of_squares = 0
    (0..@num).map { |n| sum_of_squares += (n*n) }
    sum_of_squares
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 3
end
