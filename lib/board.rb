class Gameboard
  def initialize
    @game_array = [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]
  end

  def display_board
    p @game_array[0], @game_array[1], @game_array[2]
  end
end

# board = Gameboard.new

# board.display_board
