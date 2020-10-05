class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :groups, optional: true
end
