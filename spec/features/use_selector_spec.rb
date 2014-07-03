require 'rails_helper'

feature 'selector page' do
  scenario 'selector content' do
    visit '/selector'
    expect(page).to have_content 'selector'
  end
end

require 'rails_helper'

