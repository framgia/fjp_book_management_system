class RemoveTypeFromNotification < ActiveRecord::Migration[5.1]
  def change
    remove_column :notifications, :type, :integer
    add_column :notifications, :target, :string
    add_column :notifications, :target_id, :integer
  end
end
