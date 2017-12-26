class Product < ApplicationRecord
  belongs_to :shop
  has_many :notis, as: :resource
end
