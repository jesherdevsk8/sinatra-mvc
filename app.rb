# frozen_string_literal: true

require 'sinatra'
require 'sinatra/activerecord'
require 'dotenv/load'

class MyApp < Sinatra::Base; end

require './app/controllers/players_controller'

get '/players' do
  { result: PlayersController.index }.to_json
end
