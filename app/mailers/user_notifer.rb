class UserNotifer < ApplicationMailer
  default :from => 'seatyourself@gmail.com'

  def send_confirmation_email(user)
    @user= user
    mail(:to => @user.email, :subject => "here is your new confirmation "
  end  
end
