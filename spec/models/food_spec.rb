require 'rails_helper'

RSpec.describe Food, type: :model do
    subject { Food.new(name: 'Orange', measurement_unit: 'Kg', price: 10, quantity: 3) }

    before { subject.save }

    it 'name should be present' do
        expect(subject.name).to eq('Orange')
    end

    it 'measurement_unit should be present' do
        expect(subject.measurement_unit).to eq('Kg')
    end

    it 'price should be present' do
        expect(subject.price).to eq(10)
    end

    it 'quantity should be present' do
        expect(subject.quantity).to eq(3)
    end

    it 'price should be positive' do
        subject.price = -2
        expect(subject).to_not be_valid
    end

    it 'quantity should be positive' do
        subject.quantity = -2
        expect(subject).to_not be_valid
    end

end