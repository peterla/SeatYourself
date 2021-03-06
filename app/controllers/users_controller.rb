class UsersController < ApplicationController


  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
      if @user.save
        UserMailer.welcome_email(@user).deliver_now
        redirect_to restaurants_url, notice: "Thank you for Signing up"
      else
        render "new"
      end
    end


private
  def user_params
    params.require(:user).permit(:email, :first_name , :last_name , :phone_number, :is_owner  , :password, :password_confirmation)
  end
end
