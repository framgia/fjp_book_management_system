class RemoveTypeFromImages < ActiveRecord::Migration[5.1]
  def change
    remove_column :images, :type, :integer
  end
end
