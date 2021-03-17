require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/play' do
    erb :play
  end

  post '/names' do
    $game_session = Game.new
    $player_1 = Player.new(params[:Player_1])
    $player_2 = Player.new(params[:Player_2])
    redirect '/play'
  end

  post '/attack' do
    session[:attack] = true
    $game_session.attack($player_2)
    redirect '/play'
  end
end
