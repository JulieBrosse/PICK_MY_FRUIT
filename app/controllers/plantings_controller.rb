class PlantingsController < ApplicationController
  def create
    @planting = Planting.new(planting_params)
    @fruit.owner = current_user
    if fruit.save
      redirect_to plantings_path
    else
      render :new
    end
  end

  def new
  end

  def index
  end

  def show
  end

  private

  def planting_params
    params.require(:planting).permit(:name, :description, :price, :price_kind, :address, :photo)
  end

end
