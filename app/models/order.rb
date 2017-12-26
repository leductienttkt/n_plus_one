class Order < ApplicationRecord
  belongs_to :user
  has_many :notis, as: :resource
end
