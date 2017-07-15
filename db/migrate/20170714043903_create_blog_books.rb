class CreateBlogBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :blog_books do |t|
      t.integer :blog_id, null: false
      t.integer :book_id, null: false

      t.timestamps
    end
  end
end
