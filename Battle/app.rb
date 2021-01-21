require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    erb(:new_game)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/play/attack' do
    $game.attack
    redirect '/play'
  end

end
