class User < ApplicationRecord
  has_many :habits
  has_many :groups
  has_one_attached :avatar
=begin   validates :name, presence: true
  validates :name, uniqueness: true 
=end
end
