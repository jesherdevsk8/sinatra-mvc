# frozen_string_literal: true

require './app/models/players'

class PlayersController < Sinatra::Base
  def self.index
    Player.order(name: :desc)
  end

  def self.create(params)
    players = Player.new(params:)
    if players.save!
      200
    else
      400
    end
  end
end
