# frozen_string_literal: true

require_relative 'lib/board'
require_relative 'lib/players'

new_game = Gameboard.new
new_game.rules

game = Players.new('Joe', 'Sally')
game.display_board
game.current_players
game.play_game
