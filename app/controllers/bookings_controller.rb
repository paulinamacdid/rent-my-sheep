class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def create
    @booking = Booking.new(booking_params)
    @sheep = Sheep.find(params[:sheep_id])
    @booking.sheep = @sheep
    @booking.user = current_user

    if @booking.save
      redirect_to sheep_path(@sheep)
    else
      render "sheep/show", status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:booking_id])
    @booking.destroy
    redirect_to my_profile_path, status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :price_total)
  end
end
