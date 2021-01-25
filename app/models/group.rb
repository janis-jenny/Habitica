class Group < ApplicationRecord
  belongs_to :user
  has_one_attached :avatar
  has_many :group_habits, dependent: :destroy
  has_many :habits, through: :group_habits

  validates :name, uniqueness: true
  validates :name, presence: trueç
  validates :avatar, presence: true
end
