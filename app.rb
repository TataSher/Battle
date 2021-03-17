require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/play' do
    @name_1 = session[:player_1]
    @name_2 = session[:player_2]
    erb :play
  end

  post '/names' do
    session[:player_1] = params[:Player_1]
    session[:player_2] = params[:Player_2]
    redirect '/play'
  end
end
