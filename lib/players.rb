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

  attr_reader :player_X_score, :player_O_score

  def display_board
    puts "#{@game_array[0]} | #{@game_array[1]} | #{@game_array[2]}  This game is a version of tic-tac-toe formatted as a magic square."
    puts '--+---+--'
    puts "#{@game_array[3]} | #{@game_array[4]} | #{@game_array[5]}  goal is to score 15 points, which will also be equivalent to winning"
    puts '--+---+--'
    puts "#{@game_array[6]} | #{@game_array[7]} | #{@game_array[8]}  a game of tic-tac-toe.  Good luck!"
  end

  def current_players
    puts "Current players are #{@player_X} and #{@player_O}"
  end

  # Players to be X and O
  # Give each player a token which will be an attr_reader symbol
  # Give each player a total_score which starts at 0
  #
  # Game will then operate in a loop until 15 points are scored or all slots are taken
  def get_points
    # needs to loop until there is a winner or draw
    display_board
    # print the current board state
    print 'Please enter an available number on the board: '
    # @game_array = [4, 9, 2, 3, 5, 7, 8, 1, 6]
    # ex number entered is 8
    # check if current board spot is available
    # game_array.include?(number) && number != ("X" || "O")
    # find the index of the number
    # array.index(8) = 7
    # add the points to X or O
    # player_x or 0_score += 8
    # assign the location as the current player's token (X or O)
    # array[7] = current_token
    #

    # Once turn is over:
    # 1 - checks for win condition.  If player has exactly 15 then they have won
    # 2 - If no winner, swap to other players token for next turn
    number = gets.to_i
    puts "You have selected #{number}"
  end
end
