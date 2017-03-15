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

  # def take_turn()
  #   while true
  #     number_to_move = @dice.roll
  #     @players[0].player_move(number_to_move)
  #     puts @players[0].player_position
  #     if 100..106.include?(@players[0].player_position)
  #       # win_game(player[0])
  #       break
  #     end
  #     @players.rotate
  #   end
  # end

  # def win_game(player)
  #   return "Congratulations!!! #{player} won!"
  # end
end
