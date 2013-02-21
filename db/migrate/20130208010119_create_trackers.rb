class CreateTrackers < ActiveRecord::Migration
  def change
    create_table :trackers do |t|
      t.string :name
      t.string :email
      t.text :tspec
      t.references :post

      t.timestamps
    end
    add_index :trackers, :post_id
  end
end
