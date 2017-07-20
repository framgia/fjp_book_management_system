class RemoveTypeFromComments < ActiveRecord::Migration[5.1]
  def change
    remove_column :comments, :type, :integer
  end
end
