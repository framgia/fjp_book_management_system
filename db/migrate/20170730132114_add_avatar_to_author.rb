class AddAvatarToAuthor < ActiveRecord::Migration[5.1]
  def change
    add_column :authors, :avatar, :string
  end
end
