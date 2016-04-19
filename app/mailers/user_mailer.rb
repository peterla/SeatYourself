class UserMailer < ApplicationMailer

  def welcome_email(user)
    @user=user
    mail(to: @user.email, subject:"Thank you for signing up to Seatyourself")
  end

  def reservation_email(user,reservation)
    @user= user
    @resrvation= reservation
    mail(to: @user.email,subject: 'Reservation confirmation')
  end 
end
