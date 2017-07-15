class CreateNotifications < ActiveRecord::Migration[5.1]
  def change
    create_table :notifications do |t|
      t.integer :admin_id, null: false
      t.integer :user_id, null: false
      t.text :content
      t.integer :type
      t.text :content
      t.boolean :read, default: false
      t.string :link_to

      t.timestamps
    end
  end
end
