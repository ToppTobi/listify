class Group < ApplicationRecord
  has_many :products, dependent: :destroy
end