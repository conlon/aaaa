class GamesController < ApplicationController
  def new
  end

  def create
    @game = Game.new(game_params)

    if @game.save
      redirect_to @game
    else
      render 'new'
    end
  end

  def show
    @game = Game.find(params[:id])
  end

  def index
    @games = Game.all
  end


  private
    def game_params
      params[:game].permit(:name)
    end
end
