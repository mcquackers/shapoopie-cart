class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true

  has_many :shopping_cart_relationships
  has_many :cart_items, through: :shopping_cart_relationships, source: :item
end
