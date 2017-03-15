class Dice
  def initialize
    @range = 1..6
  end

  def roll
    return rand(@range)
  end
end
