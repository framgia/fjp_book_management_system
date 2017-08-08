class RemoveAdminIdFromNotification < ActiveRecord::Migration[5.1]
  def change
    remove_column :notifications, :admin_id, :integer
  end
end
