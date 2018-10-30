class AddFieldsToAccessories < ActiveRecord::Migration[5.1]
  def change
    add_column :accessories, :title, :string
    add_column :accessories, :price, :integer
  end
end
