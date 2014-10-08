class RemoveAuthorFromPicture < ActiveRecord::Migration
  def change
    change_table :pictures do |t|
      t.remove :author
      t.remove :author_info
      t.integer :author_id
    end
  end
end
