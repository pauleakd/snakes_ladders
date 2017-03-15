class Player

  attr_accessor :player_name

  def initialize(name)
    @player_name = name
    @position = 1
  end

  def player_position
    return @position
  end

  def player_move(number)
    @position += number
  end

end
