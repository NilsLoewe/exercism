# Exercism Ruby path: RobotName exercise
class Robot
  attr_reader :name
  @@names = []

  def initialize
    @name = get_new_name
  end

  def reset
    @name = get_new_name
  end

  private

  def get_new_name
    begin
      name = random_name
    end while @@names.include?(name)
    @@names << name
    name
  end

  def random_name
    name = ('AA'..'ZZ').to_a.sample
    name << (0..9).to_a.sample(3).join.to_s
  end
end

module BookKeeping
  VERSION = 2
end
