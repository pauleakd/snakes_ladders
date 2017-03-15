require('minitest/autorun')
require('minitest/rg')
require_relative('../snake_ladder')

class TestSnakeLadder < MiniTest::Test
  def setup
    @snake1 = SnakeLadder.new(40, 20)
    @ladder1 = SnakeLadder.new(10, 70)
  end

  def test_return_final_position
    assert_equal(20, @snake1.end_position)
  end

end
