class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name, null: false, unique: true
      t.text :info

      t.timestamps
    end
  end
end
