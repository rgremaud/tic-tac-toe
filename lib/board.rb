# frozen_string_literal: true

class Gameboard
  def initialize
    @game_array = [4, 9, 2, 3, 5, 7, 8, 1, 6]
  end

  def display_board
    puts "#{@game_array[0]} | #{@game_array[1]} | #{@game_array[2]}  This game is a version of tic-tac-toe formatted as a magic square."
    puts '--+---+--'
    puts "#{@game_array[3]} | #{@game_array[4]} | #{@game_array[5]}  goal is to score 15 points, which will also be equivalent to winning"
    puts '--+---+--'
    puts "#{@game_array[6]} | #{@game_array[7]} | #{@game_array[8]}  a game of tic-tac-toe.  Good luck!"
  end
end
