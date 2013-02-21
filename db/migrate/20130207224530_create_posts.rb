class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :product
      t.string :spec
      t.text   :pricehistory

      t.timestamps
    end
  end
end
