class Habit < ApplicationRecord
  belongs_to :user
  has_many :repeat_days
  has_many :group_habits, dependent: :destroy
  has_many :groups, through: :group_habits
  accepts_nested_attributes_for  :groups, allow_destroy: true
 
  validates :name, :time, presence: true
  validates :time, numericality: { greater_than:0 }

end
