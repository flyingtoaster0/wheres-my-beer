class CreateProducts < ActiveRecord::Migration
  def change
    create_table(:products, :id => false) do |t|
      t.column :id, 'int(11) PRIMARY KEY'
      t.string :name
      t.integer :price_in_cents
      t.integer :regular_price_in_cents
      t.integer :clearance_sale_savings_in_cents
      t.integer :limited_time_offer_savings_in_cents
      t.string :stock_type
      t.string :primary_category
      t.string :secondary_category
      t.string :tertiary_category
      t.string :origin
      t.string :package
      t.string :package_unit_type
      t.integer :package_unit_volume_in_milliliters
      t.integer :total_package_units
      t.integer :total_package_volume_in_milliliters
      t.integer :volume_in_milliliters
      t.integer :alcohol_content
      t.integer :price_per_liter_of_alcohol_in_cents
      t.integer :price_per_liter_in_cents
      t.string :producer_name
      t.string :image_thumb_url
      t.string :image_url
    end
  end
end
