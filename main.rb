# frozen_string_literal: true

require_relative 'lib/board'
require_relative 'lib/logic'
require_relative 'lib/pieces'

board = Gameboard.new

board.display_board

player_x = Player.new('x')

player_x.token_check

board.play_token(0, 1, 'x')
