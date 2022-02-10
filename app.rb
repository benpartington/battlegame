require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    @player1name = params[:player1]
    @player2name = params[:player2]
    erb(:play)
  end 

  # start the server if ruby file executed directly
  run! if app_file == $0
end