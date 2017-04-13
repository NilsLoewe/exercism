# Exercism Ruby path: RobotName exercise
class Robot
  attr_reader :name

  def initialize
    @name = get_new_name
  end

  def reset
    @name = random_name
  end

  private

  def get_new_name
    name = random_name
    while RobotNames.name_taken?(name)
      name = random_name
    end
    RobotNames.use_name(name)
    name
  end

  def random_name
    name = ('A'..'Z').to_a.sample(2).join
    name << (0..9).to_a.sample(3).join.to_s
  end
end

module RobotNames
  @names = []

  def self.name_taken?(name)
    @names.include?(name)
  end

  def self.use_name(name)
    @names << name
  end
end

module BookKeeping
  VERSION = 2
end
