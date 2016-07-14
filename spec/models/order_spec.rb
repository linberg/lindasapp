require 'rails_helper'

describe Order do
  context "when the order is created" do
    before do
      @order = Order.create!(product_id: "123", user_id: "456")
  end
  it "is invalid without product_id" do
    expect(Order.new(product_id: "")).not_to be_valid
  end
  end
end
