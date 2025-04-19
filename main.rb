# frozen_string_literal: true

require_relative 'lib/board'
require_relative 'lib/logic'
require_relative 'lib/players'

board = Gameboard.new

player_x = Player.new('x')

board.play_token(0, 'X')
# board.play_token(1, 'X')
# board.play_token(2, 'X')

board.win_check
