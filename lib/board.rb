# frozen_string_literal: true

class Gameboard
  def initialize
    @game_array = ['', '', '', '', '', '', '', '', '']
    @current_token = ''
  end

  def display_board
    puts "#{@game_array[0]} | #{@game_array[1]} | #{@game_array[2]}"
    puts '-----------'
    puts "#{@game_array[3]} | #{@game_array[4]} | #{@game_array[5]}"
    puts '-----------'
    puts "#{@game_array[6]} | #{@game_array[7]} | #{@game_array[8]}"
  end

  def play_token(slot, token)
    return 'That spot is taken.  Please play in a different location!' if @game_array[slot].length > 0

    # need to update to return error properly and not override existing move
    @game_array[slot] = token
    @current_token = token

    p display_board
  end

  def win_check
    win_conditions = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6],
                      [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
    win_conditions.each do |i, j, k|
      puts "Player #{@current_token} is the winner!" if @current_token == @game_array[i] &&
                                                        @game_array[i] == @game_array[j] &&
                                                        @game_array[i] == @game_array[k]
      # need to update to check against X and O
    end
    false
  end
end
