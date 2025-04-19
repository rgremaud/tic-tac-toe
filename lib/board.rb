# frozen_string_literal: true

class Gameboard
  def initialize
    @game_array = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
    @win_condition = 0 # Use 1 to trigger game over
  end

  def display_board
    puts "#{@game_array[0]} | #{@game_array[1]} | #{@game_array[2]}"
    puts '-----------'
    puts "#{@game_array[3]} | #{@game_array[4]} | #{@game_array[5]}"
    puts '-----------'
    puts "#{@game_array[6]} | #{@game_array[7]} | #{@game_array[8]}"
  end

  def play_token(slot, token_type)
    @game_array[slot] = token_type
    p display_board
  end

  def win_check
    # win check needs to be here since game_board is parent class
    # create a method that that checks for 3 like symbols in a row
    # all possible win conditions 0,1,2 - 3,4,5, - 6,7,8
    # 0 1 2                       0,3,6 - 1,4,7 - 2,5,8
    # 3 4 5                       0,4,8 - 2,4,6
    # 6 7 8
    # iterate over player token, X or O and game_board at 3 locations, a,b,c
    # if X = a = b = c at any of the win condition locatoins, game is over
    # elsif all spots are populated, draw
    # else continue playing
  end
end
