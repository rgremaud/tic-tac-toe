# frozen_string_literal: true

# Gamelogic to be a method or class that the gameboard references each time a turn is played
# Input to be taken as two coordinates
# (0,1) for example is row 1, column 2
# Once a piece is input the game needs to check for a winner
# Winner is determined by three consecutive same
# Checking if there is a winner requires game to check coordinates touching the placed piece
#
# 1 2 3        X played at 1 position is game_board[0][0]
# 4 5 6        Checking for win would have to look at 2 [0][1],4[1][0],5[1][1] and see if there is X there
# 7 8 9        Can't just add 1 to both coordinates
#
# game_array = [[nil,nil,nil],[nil,nil,nil],[nil,nil,nil]]
#

class Logic < Gameboard
  # class to include check for win condition when token is played
  # reference the current_move array, ex last move was placed at [0,1,x] - [row,column,token]
  # horizontal_check - check if game_array[0+1 or 0-1][1] is x
  #
  # vertical_check - check game_array[0][1+1 or 1-1] is
  #
  # diagonal_check - check game_array[0+1][1+1]
  #
  # include a win_condition tracker set to 0, move to 1 if winner is found which triggers game_over
end
