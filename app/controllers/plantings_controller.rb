class PlantingsController < ApplicationController

  def new
    @planting = Planting.new
  end

  def create
  @planting = Planting.new(planting_params)
  owner = current_user
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
    @planting =Planting.find(params[:id])
  end

  def edit
    @planting = Planting.find(params[:id])
  end

  def update
    @planting = Planting.find(params[:id])
    @planting.update(planting_params)
    redirect_to plantings_path
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
