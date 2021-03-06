class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail
  validates :description, presence: true
  validates :ingredient, presence: true
  validates :cocktail, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient, message: "This ingredient is already coupled with this cocktail" }
end

