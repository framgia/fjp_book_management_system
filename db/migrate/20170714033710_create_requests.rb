class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|
      t.integer :user_id, null: false
      t.integer :request_type, default: 0, null: false
      t.string :link
      t.integer :status, default: 0, null: false
      t.text :content
      t.integer :admin_approve_id

      t.timestamps
    end
  end
end
