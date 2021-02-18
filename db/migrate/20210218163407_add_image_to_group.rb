class AddImageToGroup < ActiveRecord::Migration[6.0]
  def change
    add_column :groups, :image, :string
  end
end
