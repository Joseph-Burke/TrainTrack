# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: 'seed_user')
Group.create(name: 'seed_group')
Transaction.create(user_id: 1, name: 'seed_transaction', amount: 1, description: 'A seed transaction')
