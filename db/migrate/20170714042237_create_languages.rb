class CreateLanguages < ActiveRecord::Migration[5.1]
  def change
    create_table :languages do |t|
      t.string :alias, null: false
      t.string :full_name, null: false

      t.timestamps
    end
  end
end
