class BookingsController < ApplicationController

  def index
    @user_bookings = Booking.where(user: current_user)
  end

  def new
    @booking = Booking.new
    @toy = Toy.find(params[:toy_id])
    @booking.user = current_user
    @booking.toy = @toy
  end

  def create
    @booking = Booking.new(booking_params)
    @toy = Toy.find(params[:toy_id])
    @booking.user = current_user
    @booking.toy = @toy
    if @booking.save
      redirect_to bookings_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path, status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:toy_rating, :user_rating, :toy_review, :user_review, :start_date, :end_date)
  end
end
