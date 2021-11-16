class BookingsController < ApplicationController
  # before_action :set_booking, only: [:show, :edit]

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
    @game = Game.find(params[:game_id])
  end

#   def create
#     @booking = Booking.new(booking_params)
#     if @booking.save
#       redirect_to booking_path
#     else
#       render :new
#     end
#   end

#   def create
#     @booking = booking.new(booking_params)
#     @booking. = @list
#     flash[:notice] = @booking.errors.full_messages.to_sentence unless @booking.save
#     redirect_to list_path(@booking)
#   end

#   def show
#   end

#   def edit
#   end

#   def update
#     @booking.update(booking_params)
#     redirect_to booking_path(@booking)
#   end

#   def destroy
#     @booking.destroy
#     redirect_to booking_path
#   end

#   private

#   def set_booking
#     @booking = Booking.find(params[:id])
#   end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user_id, :game_id)
  end
end
