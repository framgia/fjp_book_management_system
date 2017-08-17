class AddRawToNotification < ActiveRecord::Migration[5.1]
  def change
    add_column :notifications, :raw, :string
  end
end
