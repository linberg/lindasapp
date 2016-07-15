require 'rails_helper'

describe Order do
  context "product and user present" do
    before do
      @product = Product.create!(name: "test", description: "test", image_url: "www.test.com", color: "blue", price: "28")
			@user = User.create!(email: "test@test.com", password: "testtest")
      @order = Order.create!(product: @product, user: @user)
    end

  it "is invalid without product name" do
    expect(Order.new).to be_valid
  end
  end
end
