class RestaurantsController < ApplicationController
  before_action :ensure_logged_in, only: [:create, :new]

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant =Restaurant.new
  end

  def create
    @user= User.find(session[:user_id])
    if @user.is_owner
      @restaurant = @user.owned_restaurants.build(restaurant_params)
      if @restaurant.save
        redirect_to restaurants_url, notice: "Thank you for Signing up"
      else
        render "new"
      end
    else
      redirect_to  restaurants_url, notice: "you have to be an owner to create a restaurant"
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @new_review = @restaurant.reviews.build
  end


  private
  def restaurant_params
    params.require(:restaurant).permit(:name,:cuisine_id,:address,:capacity ,:phone_number,:user_id)
  end

end
