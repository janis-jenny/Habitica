class RepeatDay < ApplicationRecord
  belongs_to :habit
  belongs_to :user
  validates :user_id, uniqueness: { scope: :day }
end
