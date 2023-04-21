require 'rails_helper'

RSpec.describe Recipe, type: :model do
  subject do
    Recipe.new(
      name: 'Recipe title',
      preparation_time: 1,
      cooking_time: 1,
      description: 'description',
      public: false
    )
  end
  before { subject.save }

  it 'name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'preparation time should be present' do
    subject.preparation_time = nil
    expect(subject).to_not be_valid
  end

  it 'preparation time should be positive' do
    subject.preparation_time = -10
    expect(subject).to_not be_valid
  end

  it 'cooking time should be present' do
    subject.cooking_time = nil
    expect(subject).to_not be_valid
  end

  it 'cooking time should be positive' do
    subject.cooking_time = -10
    expect(subject).to_not be_valid
  end
end
