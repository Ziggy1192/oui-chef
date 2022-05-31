class BookingsController < ApplicationController
  def create
    @user = current_user
    @booking = Booking.new(booking_params)
    @chef = Chef.find(params[:chef_id])
    @booking.chef = @booking
    @booking.save
    redirect_to chef_path(@chef)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user_id)
  end
end
