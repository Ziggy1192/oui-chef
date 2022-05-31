class ChefsController < ApplicationController
  def index
    @chefs = Chef.all
  end

  def show
    @chef = Chef.find(params[:id])
    @booking = Booking.new
  end

  def new
    @chef = Chef.new
  end

  def create
    @chef = Chef.new(chef_params)
    @chef.save
  end

  private

  def chef_params
    params.require(:chef).permit(:cuisine, :speciality, :profile)
  end
end
