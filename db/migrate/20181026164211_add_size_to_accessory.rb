class AddSizeToAccessory < ActiveRecord::Migration[5.1]
  def change
    add_column :accessories, :size, :integer
  end
end
