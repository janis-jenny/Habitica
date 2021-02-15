class AddHabitIdToRepeatDay < ActiveRecord::Migration[6.0]
  def change
    add_column :repeat_days, :habit_id, :integer
  end
end
