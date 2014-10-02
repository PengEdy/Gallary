class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :name
      t.integer :category_id
      t.text :description
      t.string :author
      t.text :author_info
      t.string :photo

      t.timestamps
    end
  end
end
