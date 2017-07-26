class ChangeForeignKeysNullTrue < ActiveRecord::Migration[5.1]
  def change
    change_column :books, :publisher_id, :integer, null: true
    change_column :books, :language_id, :integer, null: true
    change_column :books, :series_id, :integer, null: true
  end
end
