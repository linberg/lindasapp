class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.root_url, :alert => exception.message
  end

  def thank_you
    @name = params[:name]
    @email= params[:email]
    @message = params[:message]
    UserMailer.contact_form(@email, @name, @message).deliver_now
    # ActionMailer::Base.mail(:from => @email,
    #  :to => 'alexwen35@gmail.com',
    #  :subject => "A new contact form message from #{@name}",
    #  :body => @message).deliver_now
  end
end
