class User < ApplicationRecord
  has_secure_password

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

  has_many :orders
  has_many :shops
  has_one :auth_token
end
