class CreateHabits < ActiveRecord::Migration[6.0]
  def change
    create_table :habits do |t|
      t.integer :user_id
      t.string :name
      t.float :amount
      t.datetime :date
      t.integer :time

      t.timestamps
    end
  end
end
