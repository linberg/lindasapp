class Comment < ActiveRecord::Base

  belongs_to :product
  belongs_to :user

  validates :body, presence: true
    validates :user, presence: true
    validates :product, presence: true
    validates :rating, numericality: { only_integer: true }

end
