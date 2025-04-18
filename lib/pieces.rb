# frozen_string_literal: true

# Create Player class
# create two players, player_x and player_o
# give players access to a method that allows them to place a token
# place_token(row,column,token_type)

class Player < Gameboard
  def initialize(token) # to assign x or o
    @token = token
  end

  def token_check
    p "My token is #{@token}"
  end

  # include method for last played token w/location.  This will be used by logic
end
