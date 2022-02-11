class Player
  attr_reader :name, :attacker
  attr_accessor :points

  def points
    @points
  end

  def initialize(name)
    @name = name
    @points = 120
  end

  def attack(opponent)
    opponent.wounded
  end

  def wounded
    @points -= 10
  end

end
