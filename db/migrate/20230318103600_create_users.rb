class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.date :date_of_birth
      t.string :gender
      t.string :relationship_status
      t.string :education
      t.string :work
      t.string :location
      t.string :profile_picture
      t.string :cover_photo

      t.timestamps
    end
  end
end
