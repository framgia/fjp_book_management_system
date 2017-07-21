class CreateBorrows < ActiveRecord::Migration[5.1]
  def change
    create_table :borrows do |t|
      t.integer :book_id, null: false
      t.integer :user_id, null: false
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
