class AddInfomationToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :role, :integer
    add_column :users, :name, :string
    add_column :users, :staff_code, :string
    add_column :users, :avatar, :string
  end
end
