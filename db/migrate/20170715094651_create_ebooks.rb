class CreateEbooks < ActiveRecord::Migration[5.1]
  def change
    create_table :ebooks do |t|
      t.integer :book_id, null: false
      t.string :format, null: false
      t.string :link, null: false

      t.timestamps
    end
  end
end
