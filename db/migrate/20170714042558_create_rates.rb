class CreateRates < ActiveRecord::Migration[5.1]
  def change
    create_table :rates do |t|
      t.integer :book_id, null: false
      t.integer :user_id, null: false
      t.integer :score, default: 0 , null: false

      t.timestamps
    end
  end
end
