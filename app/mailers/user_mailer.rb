class UserMailer < ActionMailer
  default from: "alexwen35@gmail.com"

  def contact_form(email, name, message)
  @message = message
    mail(:from => email,
         :to => 'alexwen35@gmail.com',
         :subject => "A new contact form message from #{name}")
  end
end
