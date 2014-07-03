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

  scenario 'fill in username' do
    visit 'profile'
    # User.make(:email => 'user@example.com', :password => 'caplin')
    within ('#link') do
      fill_in 'username', :with => "morne luus"
      click_on 'Submit'
    end
    expect(current_path).to eq('/profile')
  end
end