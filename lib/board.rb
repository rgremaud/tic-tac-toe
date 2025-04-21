# frozen_string_literal: true

class Gameboard
  def initialize
    @game_array = [4, 9, 2, 3, 5, 7, 8, 1, 6]
  end

  def display_board
    puts "#{@game_array[0]} | #{@game_array[1]} | #{@game_array[2]}"
    puts '--+---+--'
    puts "#{@game_array[3]} | #{@game_array[4]} | #{@game_array[5]}"
    puts '--+---+--'
    puts "#{@game_array[6]} | #{@game_array[7]} | #{@game_array[8]}"
  end

  def rules
    puts 'This game is a version of tic-tac-toe formatted as a magic square.'
    puts 'The goal is to score 15 points.'
    puts 'Each board location is worth the point total listed.'
    puts 'For example, playing across the top row is 4 + 9 + 2 = 15 points.'
  end

  def current_players
    puts "Current players are #{@player_X} and #{@player_O}"
  end
end
