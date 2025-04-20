# frozen_string_literal: true

class Players
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

  def current_players
    puts "Current players are #{@player_X} and #{@player_O}"
  end
  # Players to be X and O
  # Give each player a token which will be an attr_reader symbol
  # Give each player a total_score which starts at 0
  #
  # Game will then operate in a loop until 15 points are scored or all slots are taken
  # Requesting player input ex:
  # print: Please select an available number on the current board
  # number = gets.to_i
  # Return error msg if number has already been selected
  # Else update the board to show players token in that location, and add score to player
  # After a player scores, game to check if player score is 15
  # If no, toggle to other player for next move
end
