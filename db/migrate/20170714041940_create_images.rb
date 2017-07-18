class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.integer :target_id, null: false
      t.string :target_type, null: false
      t.string :url, null: false

      t.timestamps
    end
  end
end
