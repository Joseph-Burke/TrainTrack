require 'rails_helper'

RSpec.feature 'Transactions', type: :feature do
  it 'creates a new transaction' do
    visit 'login'
    within '#login-form' do
      fill_in 'Name', with: 'seed_user'
      click_button 'Enter'
    end
    visit new_transaction_path
    within 'form' do
      fill_in 'Name', with: 'test_transaction'
      fill_in 'Amount', with: '1'
      fill_in 'Description', with: 'A test transaction.'
      click_button 'Submit'
    end
    expect(Transaction.last.name).to eql 'test_transaction'
    expect(Transaction.last.amount).to eql 1.0
    expect(Transaction.last.description).to eql 'A test transaction.'
    expect(Transaction.last.groups).to be_empty
    visit external_transactions_path
    expect(page).to have_content 'test_transaction'
  end

  it 'displays all external transactions' do
    visit 'login'
    within '#login-form' do
      fill_in 'Name', with: 'seed_user'
    end
    click_button 'Enter'
    click_link 'External Transactions'
    expect(page).to have_content 'EXTERNAL TRANSACTIONS'
    expect(page).to have_content 'seed_transaction'
  end
end

RSpec.feature 'Transactions', type: :feature do
  it 'repeats an existing transaction' do
    count = Transaction.count
    visit login_path
    within '#login-form' do
      fill_in 'Name', with: 'seed_user'
      click_button 'Enter'
    end
    click_link 'External Transactions'

    expect(page).to have_content 'Transactions Total'

    trans1 = Transaction.find_by_name(page.find_all('.card').first.find('h5').text)
    page.find_all('.card').first.find_button('Repeat Transaction').click
    trans2 = Transaction.last
    visit transactions_path

    expect(Transaction.count).to eql(count + 1)
    expect(trans1.name).to eql(trans2.name)
    expect(trans1.groups.to_a).to eql(trans2.groups.to_a)
    expect(trans1.amount).to eql(trans2.amount)
    expect(trans1.id).not_to eql(trans2.id)
    expect(trans1.created_at).not_to eql(trans2.created_at)
  end
end
