require 'rails_helper'
require 'pry'
require 'byebug'

RSpec.feature 'Groups', type: :feature do
  it 'creates a new group' do
    visit 'login'
    within '#login-form' do
      fill_in 'Name', with: 'seed_user'
      click_button 'Enter'
    end
    visit new_group_path
    within '.new-group form' do
      fill_in 'Name', with: 'test_group'
      click_button 'Create'
    end
    expect(Group.last.name).to eql 'test_group'
    expect(Group.last.user_id).to eql User.find_by_name('seed_user').id
  end
end
