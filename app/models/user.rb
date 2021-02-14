class User < ApplicationRecord
  has_many :habits
  has_many :groups
  has_one_attached :avatar
  validates :name, presence: true, length: { in: 3..10 }
  validates :name, uniqueness: true
  validates :name, format: { with: /[a-zA-Z0-9]/ }
end
