require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb(:app)
  end

  post '/names' do
    # session[:player_1] = params[:player_1]
    # session[:player_2] = params[:player_2]
    # p params[:player_1]
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    $game = Game.new($player_1, $player_2)
    redirect '/play'
  end

  get '/play' do
    # @player_1 = session[:player_1]
    # @player_2 = session[:player_2]
    @game = $game
    erb :plays
  end

  get '/attack' do
    # @player_1 = session[:player_1]
    # @player_2 = session[:player_2]
    @game = $game
    @game.attack(@game.player_2)
    erb :attack
  end

  get '/swap' do
    @game = $game
    @game.swap
    redirect '/play'
  end

  run! if app_file ==$0
end
