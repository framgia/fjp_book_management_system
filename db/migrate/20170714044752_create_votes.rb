class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|
      t.integer :target_id, null: false
      t.string :target_type, null: false
      t.integer :user_id, null: false

      t.timestamps
    end
  end
end
