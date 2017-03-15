class Board

  def initialize(snakes_ladders)
    @snakes_ladders = snakes_ladders || []
  end

  def process_snakes_ladders(landing_spot)
    for snlader in @snakes_ladders
      if snlader.start_position == landing_spot
        return snlader.end_position
    end
  end
  else
    return landing_spot
  end

end
