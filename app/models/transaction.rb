class Transaction < ApplicationRecord
  belongs_to :user, class_name: 'User'
  belongs_to :group
end
