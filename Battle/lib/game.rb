require_relative 'player.rb'

class Game
  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @turn = true
  end

  def attack
    player_under_attack.reduce_health(10)
    change_turn
  end

  def turn_name
    player_turn.name
  end

  private

  def change_turn
    @turn = !@turn
  end

  def player_turn
    @turn ? @player_1 : @player_2
  end

  def player_under_attack
    !@turn ? @player_1 : @player_2
  end

end
