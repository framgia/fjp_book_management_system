class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.integer :target_id, null: false
      t.string :target_type, null: false
      t.integer :parent_id
      t.integer :user_id, null: false
      t.string :content
      t.integer :type

      t.timestamps
    end
  end
end
