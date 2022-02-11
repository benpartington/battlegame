require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player.rb'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect('/play')
  end 

  get '/play' do
    @player1name = $player1.name
    @player2name = $player2.name
    @player2hp = $player2.points
    erb(:play)
  end

  post '/attacked' do
    redirect('/play')
  end

  post '/attack' do
    @player1name = $player1.name
    @player2name = $player2.name
    $player1.attack($player2) 
    @player2hp = $player2.points
    erb(:attack)
    # redirect('/play')
  end

  run! if app_file == $0
end