require('minitest/autorun')
require('minitest/rg')
require_relative('../game_engine')
require_relative('../player')
require_relative('../dice')



class TestGameEngine < MiniTest::Test
  def setup
    @dice = Dice.new
    player1 = Player.new("Rhys")
    player2 = Player.new("Paule")
    @players = [player1, player2]
    @game_engine = GameEngine.new(@players,
     @dice)
  end

  def test_engine_has_players
    assert_equal(@players, @game_engine.players)
  end

  def test_take_turn
    @game_engine.take_turn()
    assert_equal((2..7).include?(@players[0].player_position), true)
    assert_equal((2..7).include?(@players[1].player_position), true)
  end
end
