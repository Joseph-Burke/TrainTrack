class Transaction < ApplicationRecord
  belongs_to :user
  has_many :group_transactions
  has_many :groups, through: :group_transactions
  validates :name, :description, :amount, presence: true
  validates :amount, numericality: { greater_than: 0 }
  validates :description, length: { maximum: 140 }
end
