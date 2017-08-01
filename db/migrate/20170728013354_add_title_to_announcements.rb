class AddTitleToAnnouncements < ActiveRecord::Migration[5.1]
  def change
    add_column :announcements, :title, :text
  end
end
