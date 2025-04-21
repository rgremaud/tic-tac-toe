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
    # needs to loop until there is a winner or draw
    # loop example:
    active = 1
    i = 0
    loop do
      # Use the loop to alternate whose turn it is
      # update print notification to display whose turn it is
      # swap by alternating between i being odd or even
      print 'Please enter the point total of the location you wish to place your token on: '
      number = gets.to_i
      play_location = @game_array.index(number)
      @game_array[play_location] = 'X'
      @player_X_score += number
      i += 1
      display_board
      active_player
      break if i == 9 # || player_X_score == 15 || player_O_score == 15
    end

    # print the current board state
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
  end

  def active_player
    active_player = ''
    if active = 1
      puts "Active player is #{@player_X}"
      active_player = @player_X
      active *= -1
    else
      puts "Active player is #{@player_O}"
      active_player = @player_O
      active *= -1
    end
  end
end
