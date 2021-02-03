class DropGroupHabitTable < ActiveRecord::Migration[6.0]
  def change
    def up
      drop_table :group_habits
    end
  
    def down
      raise ActiveRecord::IrreversibleMigration
    end
  
  end
end
