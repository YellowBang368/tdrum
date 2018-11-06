class AddTopicToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :topic, :string
  end
end
