class RecipeFood < ApplicationRecord
  belongs_to :food
  belongs_to :recipe

  validates :food_id, uniqueness: { scope: :recipe_id }
  validates :quantity, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
