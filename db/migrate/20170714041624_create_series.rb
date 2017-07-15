class CreateSeries < ActiveRecord::Migration[5.1]
  def change
    create_table :series do |t|
      t.string :title, null: false
      t.string :description

      t.timestamps
    end
  end
end
