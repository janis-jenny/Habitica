class GroupHabit < ApplicationRecord
  belongs_to :group
  belongs_to :habit
end
