require 'rails_helper'

feature 'itinerary' do
  scenario 'itinerary content' do
    visit '/itinerary'
    expect(page).to have_content 'itinerary'
  end
end
