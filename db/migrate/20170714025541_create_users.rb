class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :password
      t.integer :status
      t.integer :role, default: 0, null: false
      t.string :name

      t.timestamps
    end
  end
end
