# frozen_string_literal: true

class Gameboard
  def initialize
    @game_array = [['  ', '  ', '  '], ['  ', '  ', '  '], ['  ', '  ', '  ']]
  end

  def display_board
    p @game_array[0], @game_array[1], @game_array[2]
  end

  def play_token(row, column, token_type)
    # update game_board at row, column with token_type entered

    @game_array[row][column] = token_type
    p @game_array[0], @game_array[1], @game_array[2]
  end
end
