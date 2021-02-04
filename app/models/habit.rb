class Habit < ApplicationRecord
  belongs_to :user
  has_many :repeat_days
  has_many :group_habits, dependent: :destroy
  has_many :groups, through: :group_habits
  accepts_nested_attributes_for  :groups, allow_destroy: true
=begin  validates :name, :amount, :time, :date, presence: true
  validates :amount, :time, numericality: { greater_than: 0 }
=end
=begin def no_repeat_day
    array = []
    RepeatDay.where(user_id: current_user.id, habit_id: id).map {|day|array << day}
    array.uniq #PARA ELIMINAR ELEMENTOS REPETIDOS
  end 
=end

end
