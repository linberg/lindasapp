require 'rails_helper'

describe Comment do
  context "when submitting comment" do
    before do
      @product = Product.create!(name: "test product", description: "test", image_url: "www.test.com", color: "blue", price: "28")
			@user = User.create!(email: "test@test.com", password: "testtest")
      @comment = Comment.create!(rating: 4, user: @user, product: @product, body: "Wow!")
    end
    it "is invalid without body" do
      expect(Comment.new(body: "")).not_to be_valid
    end
  end
end
