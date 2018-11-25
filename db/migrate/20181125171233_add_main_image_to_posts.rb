class AddMainImageToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :header_image, :json
    add_column :posts, :preview_image, :json
  end
end
