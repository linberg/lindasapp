# Preview all emails at http://localhost:3000/rails/mailers/user_mailer

class UserMailerPreview < ActionMailer::Preview
  def contact_form
    UserMailer.contact_form("test@testymctesterson.com", "Testy Test", "Hello World!")
  end

  def order_confirmation
    UserMailer.order_confirmation("Test1", "Toque")
  end
end
