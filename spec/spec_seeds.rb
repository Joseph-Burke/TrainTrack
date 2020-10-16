RSpec.describe do
  User.create(name: 'test_user')
  Group.create(amount_type: 'test_group')
  Transaction.create(user_id: 1, name: 'test_transaction', amount: 1, description: 'A test transaction')
end
