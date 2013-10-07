class CreateInventories < ActiveRecord::Migration
  def change
    create_table(:inventories, :id => false) do |t|
      t.integer :store_id
      t.integer :product_id
      t.integer :quantity
    end
  end
end
