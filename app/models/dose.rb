class Dose < ApplicationRecord
  belongs_to :cocktail
  validates :description, presence: true
  belongs_to :ingredient
  validates :cocktail, uniqueness: { scope: :ingredient }
end
