require 'rails_helper'
require "cancan/matchers"

describe Ability do
  context "when destroying product" do
    before do
      @product = Product.create!(name: "test product", description: "test", image_url: "www.test.com", color: "blue", price: "28")
      @user = User.create!(email: "test@test.com", password: "testtest")
    end

    it "user is guest" do
        @user = FactoryGirl.build(:user)
        ability = Ability.new(@user)
        expect(ability).to_not be_able_to(:destroy, :manage)
    end
  end
end
