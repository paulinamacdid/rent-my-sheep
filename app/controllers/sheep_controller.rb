class SheepController < ApplicationController
  def index
    @sheeps = Sheep.all
    # The `geocoded` scope filters only flats with coordinates
    @markers = @sheeps.geocoded.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude
      }
    end
  end

  def show
    @sheep = Sheep.find(params[:id])
    @booking = Booking.new
  end

  def new
    @sheep = Sheep.new
  end

  def create
    @sheep = Sheep.new(sheep_params)
    @user = current_user
    @sheep.user = @user
    if @sheep.save
      redirect_to sheep_path(@sheep)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @sheep = Sheep.find(params[:id])
    @sheep.destroy
    redirect_to my_profile_path, status: :see_other
  end

  private

  def sheep_params
    params.require(:sheep).permit(:name, :photo, :location, :description, :weight, :breed, :day_rate)
  end
end
