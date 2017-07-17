class CreateAnnouncements < ActiveRecord::Migration[5.1]
  def change
    create_table :announcements do |t|
      t.integer :admin_id, null: false
      t.text :content

      t.timestamps
    end
  end
end
