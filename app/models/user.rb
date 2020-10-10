class User < ApplicationRecord
  has_many :transactions
  has_one_attached :avatar
end
