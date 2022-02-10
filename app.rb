require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    redirect('/play')
  end 

  get '/play' do
    @player1name = session[:player1]
    @player2name = session[:player2]
    erb(:play)
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end