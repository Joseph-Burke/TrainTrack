class Group < ApplicationRecord
  has_one_attached :icon

  has_many :group_transactions, dependent: :destroy
  has_many :transactions, through: :group_transactions, source: :owner
end
