class SheepController < ApplicationController
  def index
    @sheeps = Sheep.all
  end

  def show
    @sheep = Sheep.find(params[:id])
  end
end