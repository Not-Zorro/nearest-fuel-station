require 'rails_helper'
# As a user
# When I visit "/"
# And I select "Turing" from the start location drop down (Note: Use the existing search form)
# And I click "Find Nearest Station"
# Then I should be on page "/search"
# Then I should see the closest electric fuel station to me.
describe 'As a user visiting the root' do
  it 'Im able to select a location and be on the search page with closest station' do
    visit root_path

    click_button 'Find Nearest Station'

    expect(current_path).to eq(search_path)
    expect(page).to have_content('Name: Station Name')
    expect(page).to have_content('Address: 123 Main st')
    expect(page).to have_content('Fuel-Type: Diesel')
    expect(page).to have_content('Times: 12-12')
    expect(page).to have_content('Distance: 0.1 Miles')
    expect(page).to have_content('Travel-Time: 1 Min')
    expect(page).to have_content('Head southeast on 17th St toward Larimer St')
  end
end
