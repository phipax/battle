require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb(:app)
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    $game = Game.new($player_1, $player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :plays
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.opponent_player)
    @game.swap
    erb :attack
  end

  run! if app_file ==$0
end
