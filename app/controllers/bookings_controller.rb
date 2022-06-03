class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @chef = Chef.find(params[:chef_id])
    @booking.chef = @chef
    @booking.user = current_user
    if @booking.save!
      redirect_to booking_path(@booking)
    else
      render 'chefs/show', status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @chef = Chef.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
