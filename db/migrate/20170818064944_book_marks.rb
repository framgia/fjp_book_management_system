class BookMarks < ActiveRecord::Migration[5.1]
  def change
    create_table :book_marks do |t|
      t.integer :user_id, null: false
      t.integer :book_id, null: false

      t.timestamps
    end
  end
end
