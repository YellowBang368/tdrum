class AddImagesToAccessories < ActiveRecord::Migration[5.1]
  def change
    add_column :accessories, :images, :json
  end
end
