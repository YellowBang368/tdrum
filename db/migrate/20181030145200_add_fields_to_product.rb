class AddFieldsToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :colors, :string
    add_column :products, :tonality, :string
    add_column :products, :notes, :integer
    add_column :products, :stroy, :string
  end
end
