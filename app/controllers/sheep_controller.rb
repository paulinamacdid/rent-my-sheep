class SheepController < ApplicationController
  def index
    @sheeps = Sheep.all
  end
end
