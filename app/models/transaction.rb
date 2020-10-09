class Transaction < ApplicationRecord
  belongs_to :user
  has_many :group_transactions
  has_many :groups, through: :group_transactions
end
