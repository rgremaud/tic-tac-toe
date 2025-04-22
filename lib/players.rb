# frozen_string_literal: true

class Players < Gameboard
  # Initiate the game by drawing board, creating two players
  def initialize(player1_name, player2_name)
    @game_array = [4, 9, 2, 3, 5, 7, 8, 1, 6]
    @player_X = player1_name
    @player_O = player2_name
    @player_X_token = 'X'
    @player_O_token = 'O'
    @player_X_score = 0
    @player_O_score = 0
  end

  attr_reader :player_X_token, :player_O_token

  def play_game
    active_trigger = 1
    active_player = @player_X
    i = 0
    loop do
      # puts "Active player is #{active_player}"
      print 'Please enter the point total of the location you wish to place your token on: '
      number = gets.to_i
      play_location = @game_array.index(number)
      if active_trigger == 1
        active_player = @player_X
        @game_array[play_location] = 'X'
        @player_X_score += number
        active_trigger *= -1
      elsif active_trigger == -1
        active_player = @player_O
        @game_array[play_location] = 'O'
        @player_O_score += number
        active_trigger *= -1
      end
      i += 1
      display_board
      break if i == 9 || @player_X_score == 15 || @player_O_score == 15
    end
    win_check
  end
end
