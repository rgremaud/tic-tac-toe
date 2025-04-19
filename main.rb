# frozen_string_literal: true

require_relative 'lib/board'
require_relative 'lib/logic'
require_relative 'lib/players'

board = Gameboard.new

player_x = Player.new('x')

player_x.token_check

board.play_token(0, 'X')
