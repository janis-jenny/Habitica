class Habit < ApplicationRecord
  attr_accessor :day_id, :name, :time, :date, :amount
  belongs_to :user
  has_one :repeat_days, :through => :repeat_dayhabits
  has_many :group_habits, dependent: :destroy
  has_many :groups, through: :group_habits
  accepts_nested_attributes_for :repeat_days, :allow_destroy => true

  validates :name, :amount, :time, :date, presence: true
  validates :amount, :time, numericality: { greater_than: 0 }
end
