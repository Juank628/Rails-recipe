require 'rails_helper'

RSpec.describe RecipeFood, type: :model do
  subject do
    RecipeFood.new(
      quantity: 100,
      recipe_id: 1,
      food_id: 1
    )
  end

  before { subject.save }

  it 'will not accept a new entry having same recipe id and food id' do
    recipe_food2 = RecipeFood.new(
      quantity: 100,
      recipe_id: 1,
      food_id: 1
    )
    expect(recipe_food2).to_not be_valid
  end

  it 'quantity should be present' do
    subject.quantity = nil
    expect(subject).to_not be_valid
  end

  it 'quantity should be positive' do
    subject.quantity = -10
    expect(subject).to_not be_valid
  end
end
