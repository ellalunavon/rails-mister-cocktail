class Cocktail < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  # validates :cocktail, uniqueness: { scope: :ingredient }

  has_many :doses, dependent: :destroy
  has_many :ingredients, :through => :doses
end
