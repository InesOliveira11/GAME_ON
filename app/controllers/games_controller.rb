class GamesController < ApplicationController
  before_action :set_game, only: %i[show edit destroy]

  def index
    if params[:query].present?
      @games = Game.search_by_name_description_and_console(params[:query]).order(created_at: :desc)
    else
      @games = Game.all.order(created_at: :desc)
    end
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    @game.user = current_user
    @game.rating = params[:rating]
    if @game.save!
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
    @booking = Booking.new
  end

  # def edit
  # end

  # def update
  #   @game.update(game_params)
  #   redirect_to game_path(@flat)
  # end

  def destroy
    @game.destroy
    redirect_to games_path
  end

  private


  def set_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:name, :description, :console, :price, :rating, :photo, :stars_value)
  end
end
