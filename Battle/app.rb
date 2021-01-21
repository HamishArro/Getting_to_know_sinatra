require 'sinatra/base'
require "sinatra/reloader"
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/play/attack' do
    $player_2.reduce_health 10
    redirect '/play'
  end

end
