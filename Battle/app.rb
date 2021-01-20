require 'sinatra/base'
require "sinatra/reloader"

class Battle < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Testing infrastructure working!'
  end

  get '/cat' do
    'cat is not as good as dog 100%'
  end

end
