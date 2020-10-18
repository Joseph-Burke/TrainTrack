require 'rails_helper'

RSpec.feature 'Sessions', type: :feature do
  it 'signs me in' do
    visit 'login'
    within('#login-form') do
      fill_in 'Name', with: 'seed_user'
    end
    click_button 'Enter'
    expect(find('h2.username')).to have_content('seed_user')
  end

  it 'signs me out' do
    visit 'login'
    within('#login-form') do
      fill_in 'Name', with: 'seed_user'
    end
    click_button 'Enter'
    expect(page).to have_selector('h2.username')
    click_link 'Log Out'
    visit user_path User.find_by_name('seed_user')
    expect(page).not_to have_selector('h2.username')
  end
end
