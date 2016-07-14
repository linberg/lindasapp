class UserMailer < ApplicationMailer
  default from: "alexwen35@gmail.com"

  def contact_form(email, name, message)
  @message = message
    mail(:from => email,
         :to => 'alexwen35@gmail.com',
         :subject => "A new contact form message from #{name}")
  end

  def order_confirmation(user, order)
    @user = user
    @order = order
    mail(:from => 'alexwen35@gmail.com'
         :to => @user.email
         :subject => "Thank you for your order!")
  end

end
