class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.text :text
      t.string :image
      t.integer :likes_count
      t.integer :comments_count
      t.integer :shares_count
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
