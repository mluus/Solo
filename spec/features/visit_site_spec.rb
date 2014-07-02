require 'rails_helper'

feature 'visit the site' do
  scenario 'Hello World!' do
    visit '/'
    expect(page).to have_content 'WHERE2GO!'
  end

  scenario 'Privacy' do
  visit '/privacy'
  expect(page).to have_content 'Privacy'
  end

 scenario 'Terms' do
  visit '/terms'
  expect(page).to have_content 'Terms'
  end

  scenario 'Profile' do
  visit '/profile'
  expect(page).to have_content 'Profile'
  end

  scenario 'Selector' do
  visit '/selector'
  expect(page).to have_content 'Selector'
  end

end