class BikesController < ApplicationController
def index
    @bikes = Bike.all
  end

  def show
     @bike = Bike.find(params[:id])
  end

  def new
    @bike = Bike.new
  end

  def create
    @bike = Bike.new(bike_params)

    if @bike.save
      redirect_to bikes_path
    else
      render "new"
    end
  end

    def edit
      @bike = Bike.find(params[:id])
    end

    private

    def bike_params
      params.require(:bike).permit(:name, :year, :description)
    end
end
