class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.integer :store_id
      t.integer :product_id
      t.integer :quantity
      t.string :date_updated
    end
  end
end
