class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :recipient
      t.text :body

      t.timestamps
    end
  end
end
