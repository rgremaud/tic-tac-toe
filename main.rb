# frozen_string_literal: true

require_relative 'lib/board'
require_relative 'lib/players'

new_game = Gameboard.new
new_game.display_board

game = Players.new('Romain', 'Whitney')
game.current_players
game.get_points
