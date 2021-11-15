class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit]

  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      redirect_to games_path
    else
      render :new
    end
  end

  # def create
  #   @bookmark = Bookmark.new(bookmark_params)
  #   @bookmark.list = @list
  #   flash[:notice] = @bookmark.errors.full_messages.to_sentence unless @bookmark.save
  #   redirect_to list_path(@list)
  # end

  def show
  end

  # def edit
  # end

  # def update
  #   @game.update(game_params)
  #   redirect_to game_path(@flat)
  # end

  # def destroy
  #   @game.destroy
  #   redirect_to games_path
  # end

  private

  def set_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:name, :description, :console, :price, :rating)
  end
end
