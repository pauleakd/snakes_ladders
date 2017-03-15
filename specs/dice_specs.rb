require('minitest/autorun')
require('minitest/rg')
require_relative('../dice')


class TestDice < MiniTest::Test
  def setup
    @dice1 = Dice.new()
  end

  def test_dice_roll
    expected = @dice1.roll
    assert_equal((1..6).include?(expected), true)
  end
end
