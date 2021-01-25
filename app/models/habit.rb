class Habit < ApplicationRecord
  belongs_to :user
  has_many :group_habits, dependent: :destroy
  has_many :groups, through: :group_habits

  validates :name, :amount :time :date, presence: true
  validates :amount, :time, numericality: { greater_than: 0 }
  
end
