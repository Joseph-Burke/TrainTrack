RSpec.describe do
  User.first_or_create(name: 'seed_user')
  Group.first_or_create(name: 'seed_group')
  Transaction.first_or_create(user_id: 1, name: 'seed_transaction', amount: 1, description: 'A seed transaction')
end
