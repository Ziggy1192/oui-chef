class ChefsController < ApplicationController
  def index
    if params[:query].present?
      sql_query = <<~SQL
        chefs.cuisine @@ :query
        OR chefs.profile @@ :query
        OR users.first_name @@ :query
        OR users.last_name @@ :query
      SQL
      @chefs = Chef.joins(:user).where(sql_query, query: "%#{params[:query]}%")
    else
      @chefs = Chef.all
    end
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
    @chef.user = current_user
    if @chef.save!
      redirect_to chef_path(@chef)
    else
      render :new, :unprocessable_entity
    end
  end

  private

  def chef_params
    params.require(:chef).permit(:cuisine, :profile, :vegan, :vegetarian, :fish, :meat, :dessert, photos: [])
  end
end
