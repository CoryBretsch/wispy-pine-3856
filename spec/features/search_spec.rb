require 'rails_helper'

RSpec.describe 'User can search for food item', type: :feature do
  describe 'When user visits "/"' do
      it 'should have a button to Discover Top Rated Movies' do
        visit root_path
        save_and_open_page
        fill_in :q, with: "sweet potatoes"
        click_on "Search"

        expect(page.status_code).to eq 200
        expect(current_path).to eq(foods_path)
        
        
      
      end
    end
  end










# As a user,
# When I visit "/"
# And I fill in the search form with "sweet potatoes"
# (Note: Use the existing search form)
# And I click "Search"
# Then I should be on page "/foods"
# Then I should see a total of the number of items returned by the search.
# (sweet potatoes should find more than 30,000 results)
# Then I should see a list of TEN foods that contain the ingredient "sweet potatoes"

# And for each of the foods I should see:
# - The food's GTIN/UPC code
# - The food's description
# - The food's Brand Owner
# - The food's ingredients