class Group < ApplicationRecord
  has_one_attached :avatar

  belongs_to :user

  has_many :group_transactions, dependent: :destroy
  has_many :transactions, through: :group_transactions, source: :owner

  validates :name, uniqueness: true
  validates :name, presence: true
end
