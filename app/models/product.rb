class Product < ActiveRecord::Base
  validates :name, :description, :image_url, :color, :price, presence: true
  has_many :orders
  has_many :comments
end
