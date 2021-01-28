class Habit < ApplicationRecord
  attr_accessible :day_id, :name, :time, :date, :amount
  belongs_to :user
  belongs_to :repeat_day
  has_many :group_habits, dependent: :destroy
  has_many :groups, through: :group_habits

  validates :name, :amount, :time, :date, presence: true
  validates :amount, :time, numericality: { greater_than: 0 }
end
