require 'sinatra/base'
require "sinatra/reloader"

class Battle < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_1] = params[:player_1]
    session[:player_2] = params[:player_2]
    session[:player_1_hp] = 100
    session[:player_2_hp] = 100
    redirect '/play'
  end

  get '/play' do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    @player_1 = session[:player_1_hp]
    @player_2 = session[:player_2_hp]
    erb(:play)
  end

end
