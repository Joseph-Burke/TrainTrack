class GroupTransaction < ApplicationRecord
  belongs_to :group
  belongs_to :owner, foreign_key: 'transaction_id', class_name: 'Transaction'
end
