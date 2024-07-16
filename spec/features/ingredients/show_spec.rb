# user story 2
require 'rails_helper'

RSpec.describe 'Recipes Show', type: :feature do
  before :each do
    @ingredient1 = Ingredient.create!(name: 'Ground Beef', cost: 2)
    @ingredient2 = Ingredient.create!(name: 'Fake Cheese', cost: 4)
    @recipe = Recipe.create!(name: 'Chilli Mac', complexity: 3, genre: 'Trailer Park')
    RecipeIngredient.create!(recipe: @recipe, ingredient: @ingredient1)
    RecipeIngredient.create!(recipe: @recipe, ingredient: @ingredient2)
  end

  it 'displays the recipe name, complexity, genre, and ingredients' do
    visit "/recipes/#{@recipe.id}"

    within('#recipe-name') do
      expect(page).to have_content('Chilli Mac')
    end

    within('#recipe-details') do
      expect(page).to have_content('Complexity: 3')
      expect(page).to have_content('Genre: Trailer Park')
    end

    within('#recipe-ingredients') do
      expect(page).to have_content('Ground Beef')
      expect(page).to have_content('Fake Cheese')
    end
  end
end