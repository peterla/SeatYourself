class UsersController < ApplicationController


  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
      if @user.save
        redirect_to restaurants_url, notice: "Thank you for Signing up"
      else
        render "new"
      end
    end

  #  def show
  #    if current_user
  #      @reservations= @restaurant.reservations.build((reservation_params))
  #    end
  #  end

private
  def user_params
    params.require(:user).permit(:email, :first_name , :last_name , :phone_number , :password, :password_confirmation)
  end
end
