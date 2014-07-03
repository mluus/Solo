require 'rails_helper'

feature 'profile' do
  scenario 'login button' do
    visit '/profile'
    expect(find('#link')).to have_button('Submit')
  end

  scenario 'login text field' do
    visit '/profile'
    expect(find('#link')).to have_css('input')

  end

  scenario 'Profile' do
    visit '/profile/profile'
    expect(page).to have_content 'profile!'
  end

  scenario 'user_data' do
    visit '/profile/user_data'
    expect(page).to have_content 'user data'
  end
#testing various scenarios to check web page for Profile!
  scenario 'fill in username' do
    visit 'profile'
    within ('#link') do
      fill_in 'username', :with => "morne luus"
      click_on 'Submit'
    end
    # line below will show the path on the URL line.
    expect(current_path).to eq('/profile')
  end
end