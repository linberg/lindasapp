class StaticPagesController < ApplicationController
  def index
    @products = Product.all
  end

  def landing_page
    @products = Product.all
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

  def order_confirmation
    @name = params[:name]
    @order = params[:order]
    UserMailer.order_confirmation(@name, @order).deliver_now
  end
  
end
