require 'sinatra/base'
require './lib/player.rb'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/play' do
    erb :play
  end

  post '/names' do
    $player_1 = Player.new(params[:Player_1])
    $player_2 = Player.new(params[:Player_2])
    redirect '/play'
  end

  post '/attack' do
    session[:attack] = true
    redirect '/play'
  end
end
