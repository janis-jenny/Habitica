class CreateRepeatDays < ActiveRecord::Migration[6.0]
  def change
    create_table :repeat_days do |t|
      t.string :day

      t.timestamps
    end
  end
end
