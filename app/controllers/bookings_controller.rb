class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @sheep = Sheep.find(params[:sheep_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @sheep = Sheep.find(params[:sheep_id])
    @booking.sheep = @sheep

    if @booking.save
      redirect_to sheep_path(@sheep)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:comment, :rating)
  end
end
