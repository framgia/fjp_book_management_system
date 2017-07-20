class AddRateAndRateCountToBooks < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :rate, :float
    add_column :books, :rate_count, :integer
  end
end
