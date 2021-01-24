class CreateGroupHabits < ActiveRecord::Migration[6.0]
  def change
    create_table :group_habits do |t|
      t.integer :group_id
      t.string :habit_id
      t.string :integer

      t.timestamps
    end
  end
end
