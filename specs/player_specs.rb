require('minitest/autorun')
require('minitest/rg')
require_relative('../player')
require_relative('../dice')


class TestPlayer < MiniTest::Test
  def setup
    @player1 = Player.new("Matt")
    @dice = Dice.new
  end

  def test_player_name
    assert_equal("Matt", @player1.player_name)
  end

  def test_start_position
    assert_equal(1, @player1.player_position)
  end

  def test_player_move
    dice_value = @dice.roll
    @player1.player_move(dice_value)
    assert_equal(1 + dice_value, @player1.player_position)
  end

  def test_player_set_position
    @player1.set_position(10)
    assert_equal(10, @player1.player_position)
  end

end
