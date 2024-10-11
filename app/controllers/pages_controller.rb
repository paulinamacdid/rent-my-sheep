class PagesController < ApplicationController
  def home
  end

  def my_profile
    @sheep = Sheep.where(user: current_user)
    @booking = Booking.where(user: current_user)
  end
end
