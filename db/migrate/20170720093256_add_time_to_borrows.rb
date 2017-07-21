class AddTimeToBorrows < ActiveRecord::Migration[5.1]
  def change
    add_column :borrows, :time_start, :datetime
    add_column :borrows, :time_end, :datetime
  end
end
