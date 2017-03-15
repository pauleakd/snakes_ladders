require('minitest/autorun')
require('minitest/rg')
require_relative('../snake_ladder')
require_relative('../board')


class TestBoard < MiniTest::Test
  def setup
    snake1 = SnakeLadder.new(20,5)
    ladder1 = SnakeLadder.new(25,50)
    @board = Board.new([snake1,ladder1])
  end

  def test_process_snakes_ladders_change
    assert_equal(5, @board.process_snakes_ladders(20))
  end

  def test_process_snakes_ladder_same
    assert_equal(6, @board.process_snakes_ladders(6))
  end

end
