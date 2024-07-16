require 'rails_helper'
# user story 1
RSpec.describe 'Ingredients Index', type: :feature do
  before :each do
    @ingredient1 = Ingredient.create!(name: 'Ground Beef', cost: 2)
    @ingredient2 = Ingredient.create!(name: 'Salt', cost: 4)
  end

  it 'displays all ingredients with names and costs' do
    visit "/ingredients"

    expect(page).to have_content('Ground Beef: 2')
    expect(page).to have_content('Salt: 4')
  end
end