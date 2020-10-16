require 'rails_helper'

RSpec.feature 'Sessions', type: :feature do
  it 'signs me in' do
    user = User.create(name: 'Joe')
    visit 'login'
    within('#login-form') do
      fill_in 'Name', with: user.name
    end
    click_button 'Enter'
    visit user_path(user)
    expect(find('h2.username')).to have_content('Joe')
  end

  it 'signs me out' do
    user = User.create(name: 'Joe')
    visit 'login'
    within('#login-form') do
      fill_in 'Name', with: user.name
    end
    click_button 'Enter'
    visit user_path(user)
    expect(page).to have_selector('h2.username')
    click_link 'Log Out'
    visit user_path(user)
    expect(page).not_to have_selector('h2.username')
  end
end
