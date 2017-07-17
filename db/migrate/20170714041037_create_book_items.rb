class CreateBookItems < ActiveRecord::Migration[5.1]
  def change
    create_table :book_items do |t|
      t.integer :book_id, null: false
      t.string :location
      t.integer :state
      t.string :description

      t.timestamps
    end
  end
end
