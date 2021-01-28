class AddRepeatDayToHabits < ActiveRecord::Migration[6.0]
  def change
    add_column :habits, :day_id, :int
  end
end
