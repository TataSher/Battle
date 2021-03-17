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
    # $turn = $game_session.player_1.name
    redirect '/play'
  end

  post '/attack' do
    session[:attack] = true
    $target = ($game_session.turn == $game_session.player_1.name ? $game_session.player_2 : $game_session.player_1)
    $game_session.attack($target)

    redirect '/play'
  end
end
