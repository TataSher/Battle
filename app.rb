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
    $game_session = Game.new(params[:Player_1], params[:Player_2])
    redirect '/play'
  end

  post '/attack' do
    session[:attack] = true
    $game_session.attack($game_session.player_2)
    redirect '/play'
  end
end
