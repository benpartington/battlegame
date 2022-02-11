require_relative './player.rb'

class Game 
  @name = ""

  def add_players 
    player1 = Player.new(@name)
    player2 = Player.new(@name)
  end

  def attack(opponent)
    opponent.wounded
  end

  # def wounded
  #   @points -= 10
  # end

end 