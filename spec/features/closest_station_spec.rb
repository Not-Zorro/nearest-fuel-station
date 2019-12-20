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
    expect(page).to have_content('Name: Seventeenth Street Plaza')
    expect(page).to have_content('Address: 1225 17th St., Denver, CO 80202')
    expect(page).to have_content('Fuel-Type: ELEC')
    expect(page).to have_content('Access-Time: MO: Not Specified; TU: Not Specified; WE: Not Specified; TH: Not Specified; FR: Not Specified; SA: Not Specified; SU: Not Specified')
    expect(page).to have_content('Distance: 0.1 mi')
    expect(page).to have_content('Travel-Time: 1 min')
    expect(page).to have_content('Head <b>southeast</b> on <b>17th St</b> toward <b>Larimer St</b>')
  end
end
