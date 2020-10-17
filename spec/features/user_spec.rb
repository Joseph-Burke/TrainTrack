require 'rails_helper'

RSpec.feature 'Users', type: :feature do
  it 'creates a new user' do
    visit 'users/new'
    expect(page).to have_content('Sign Up')
    within('.new-user form') do
      fill_in 'Name', with: 'Test User'
    end
    click_button 'Submit'
    expect(page).not_to have_content('Sign Up')
  end

  it "changes a user's details" do
    visit 'users/new'
    within('.new-user form') do
      fill_in 'Name', with: 'Test User'
    end
    click_button 'Submit'
    expect(page).to have_content('Edit Account')
  end
end
