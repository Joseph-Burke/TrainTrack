class Group < ApplicationRecord
  has_one_attached :avatar

  has_many :group_transactions, dependent: :destroy
  has_many :transactions, through: :group_transactions, source: :owner
end
