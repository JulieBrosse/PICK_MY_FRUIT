class PlantingsController < ApplicationController

  def new
    @planting = Planting.new
  end

  def create
  @planting = Planting.new(planting_params)
  @planting.owner = User.find(params[:user_id])
    if @planting.save
      redirect_to plantings_path
    else
      render :new
     end
  end

  def index
    @plantings = Planting.all
  end

  def show
    @planting = Planting.find(params[:id])
  end

  def destroy
    @planting = Planting.find(params[:id])
    @planting.destroy
  end

  private

  def planting_params
    params.require(:planting).permit(:name, :description, :price, :price_kind, :address, :photo)
  end

end
