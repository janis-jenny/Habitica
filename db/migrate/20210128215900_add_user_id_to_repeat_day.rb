class AddUserIdToRepeatDay < ActiveRecord::Migration[6.0]
  def change
    add_column :repeat_days, :user_id, :integer
  end
end
