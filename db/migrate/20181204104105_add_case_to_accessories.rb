class AddCaseToAccessories < ActiveRecord::Migration[5.1]
  def change
    add_column :accessories, :case, :boolean, default: false
  end
end
