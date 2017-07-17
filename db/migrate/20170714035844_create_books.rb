class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.integer :publisher_id, null: false
      t.integer :language_id, null: false
      t.string :isbn, null: false
      t.integer :series_id
      t.string :dimension
      t.integer :pages
      t.string :weight
      t.string :title, null: false
      t.datetime :public_date

      t.timestamps
    end
  end
end
