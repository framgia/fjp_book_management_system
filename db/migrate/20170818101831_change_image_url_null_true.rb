class ChangeImageUrlNullTrue < ActiveRecord::Migration[5.1]
  def change
    change_column :images, :url, :string, null: true
  end
end
