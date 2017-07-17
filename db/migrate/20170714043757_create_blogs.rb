class CreateBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :blogs do |t|
      t.integer :user_id, null: false
      t.text :content
      t.string :description
      t.string :title, null: false

      t.timestamps
    end
  end
end
