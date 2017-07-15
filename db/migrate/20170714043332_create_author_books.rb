class CreateAuthorBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :author_books do |t|
      t.integer :author_id, null: false
      t.integer :book_id, null: false

      t.timestamps
    end
  end
end
