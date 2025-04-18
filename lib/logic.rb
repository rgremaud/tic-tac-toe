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
# create Player class
#
