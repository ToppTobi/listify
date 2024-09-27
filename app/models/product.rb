class Product < ApplicationRecord
  belongs_to :group  # Jedes Produkt gehört zu einer Gruppe

  has_paper_trail
end