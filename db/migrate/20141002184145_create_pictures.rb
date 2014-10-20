class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :name, null: false
      t.integer :category_id, null: false
      t.text :description
      t.string :author, null: false
      t.text :author_info
      t.string :photo, null: false

      t.timestamps
    end
  end
end
