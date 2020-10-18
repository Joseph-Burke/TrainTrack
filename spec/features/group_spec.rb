require 'rails_helper'

RSpec.feature 'Groups', type: :feature do
  it 'creates a new group' do
    expect(Group.last.name).not_to eql 'test_group'
    visit 'login'
    within '#login-form' do
      fill_in 'Name', with: 'seed_user'
      click_button 'Enter'
    end
    click_link 'Groups'
    click_button 'Create a new group'
    within '.new-group form' do
      fill_in 'Name', with: 'test_group'
      click_button 'Create'
    end
    expect(Group.last.name).to eql 'test_group'
  end
end
