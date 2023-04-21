require 'rails_helper'

RSpec.describe 'foods/new.html.erb', type: :feature do
  let(:user) { User.create(name: 'Prangon Ghose', email: 'test@example.com', password: '12345678') }
  before(:each) do
    user.confirm
    sign_in user
    visit '/foods/new'
  end

  it 'Shows the page title' do
    expect(page).to have_content('New Food')
  end

  it 'Shows all the 4 input fields' do
    expect(page).to have_selector('.form-control', count: 4)
  end

  it 'Shows the add food button' do
    expect(page).to have_selector('.btn-primary')
  end
end