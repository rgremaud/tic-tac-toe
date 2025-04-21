Building tic-tac-toe inspired by a 3x3 magic-square

4 | 9 | 2      All of the win conditions total 15
--+---+--      Example: 4 + 9 + 2 = 15
3 | 5 | 7               3 + 5 + 7 = 15
--+---+--               4  + 5 + 6 = 15
8 | 1 | 6

Files: 
main.rb - initiate the game state here by creatining initial game
board.rb - draw initial board and describe rules
game.rb - create board, two players, and logic to cycle turns until a winner or draw

Example loop to run alternate   
loop do 
i += 1
if i % 2 == 0
puts i
puts "Even
else
puts i
puts "Odd"
end
break if i == 9
end
