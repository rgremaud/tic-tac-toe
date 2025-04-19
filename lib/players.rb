# frozen_string_literal: true

class Player < Gameboard
  def initialize(token) # to assign x or o
    @token = token
  end

  def token_check
    p "My token is #{@token}"
  end
end
