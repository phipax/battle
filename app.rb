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
    @player_1 = $game.player_1_name
    @player_2 = $game.player_2_name
    erb :plays
  end

  get '/attack' do
    # @player_1 = session[:player_1]
    # @player_2 = session[:player_2]
    @player_1 = $game.player_1_name
    @player_2 = $game.player_2_name
    $game.attack($player_2)
    erb :attack
  end

  run! if app_file ==$0
end
