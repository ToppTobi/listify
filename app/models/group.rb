class Group < ApplicationRecord
  has_many :products, dependent: :destroy

  has_paper_trail
end