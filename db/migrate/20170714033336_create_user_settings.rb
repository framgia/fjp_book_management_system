class CreateUserSettings < ActiveRecord::Migration[5.1]
  def change
    create_table :user_settings do |t|
      t.integer :user_id, null: false
      t.boolean :notification_to_email, default: false , null: false
      t.integer :language

      t.timestamps
    end
  end
end
