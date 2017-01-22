class User < ActiveRecord::Base
  has_many :purchases
  has_many :items, through: :purchases

  validates :email, uniqueness: true
  validates :password, presence: true
end
