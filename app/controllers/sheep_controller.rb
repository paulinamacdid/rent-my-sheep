class SheepController < ApplicationController
  def index
    @sheeps = Sheep.all
  end

  def show
    @sheep = Sheep.find(params[:id])
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

  private

  def sheep_params
    params.require(:sheep).permit(:name, :image_url, :location, :description, :weight, :breed, :day_rate)
  end
end
