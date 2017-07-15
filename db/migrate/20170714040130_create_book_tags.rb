class CreateBookTags < ActiveRecord::Migration[5.1]
  def change
    create_table :book_tags do |t|
      t.integer :book_id, null: false
      t.integer :tag_id, null: false

      t.timestamps
    end
  end
end
