class AddNoteToBorrows < ActiveRecord::Migration[5.1]
  def change
    add_column :borrows, :note, :text
  end
end
