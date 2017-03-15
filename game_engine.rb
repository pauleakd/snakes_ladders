class GameEngine
  attr_reader :players
  def initialize(players, dice)
    @players = players || []
    @dice = dice
  end

  def take_turn()
    for player in @players
      number_to_move = @dice.roll
      player.player_move(number_to_move)
    end
  end
end
