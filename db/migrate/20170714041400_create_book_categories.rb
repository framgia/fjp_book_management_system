class CreateBookCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :book_categories do |t|
      t.integer :book_id, null: false
      t.integer :category_id, null: false

      t.timestamps
    end
  end
end
