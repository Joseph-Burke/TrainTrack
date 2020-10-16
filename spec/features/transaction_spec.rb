require 'rails_helper'

RSpec.feature "Transactions", type: :feature do
  it 'creates a new transaction' do
    visit 'users/new'
    within '.new-user form' do
      fill_in 'Name', with: 'Test User'
    end
    click_button 'Submit'
    click_link 'Transactions'
    click_button 'Create a new transaction'
    within "form"  do
      fill_in 'Name', with: 'test_name'
      fill_in 'Amount', with: '1'
      fill_in 'Description', with: 'test_description'
      click_button 'Submit'
    end

    expect(Transaction.last.name).to eql 'New Transaction'
  end
end
