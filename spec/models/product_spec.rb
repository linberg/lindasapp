require 'rails_helper'

describe Product do
  context "when the product has comments" do
    before do
      @product = Product.create!(name: "test product", description: "test", image_url: "www.test.com", color: "blue", price: "28")
      @user = User.create!(email: "test@test.com", password: "testtest")
      @product.comments.create!(rating: 1, user: @user, body: "This sucks!")
      @product.comments.create!(rating: 3, user: @user, body: "This is OK!")
      @product.comments.create!(rating: 5, user: @user, body: "This is great!")
    end
  it "returns the average rating of all comments" do
    expect(@product.average_rating). to eq 3
  end
  it "is not valid" do
    expect(Product.new(description: "Nice stuff")).not_to be_valid
  end

  end
end
