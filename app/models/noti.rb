class Noti < ApplicationRecord
  belongs_to :resource, polymorphic: true
end
