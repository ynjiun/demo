class AddDescriptionToFeedEntry < ActiveRecord::Migration
  def change
    add_column :feed_entries, :description, :text
  end
end
