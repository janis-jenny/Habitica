class CreateGroupHabit < ActiveRecord::Migration[6.0]
  def change
    create_table :group_habits do |t|
      t.integer :group_id
      t.integer :habit_id

      t.timestamps
    end
  end
end
