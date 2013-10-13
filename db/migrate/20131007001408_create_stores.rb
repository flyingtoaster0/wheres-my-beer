class CreateStores < ActiveRecord::Migration
  def change
    create_table(:stores, :id => false) do |t|
      t.column :id, 'int(11) PRIMARY KEY'
      t.string :name
      t.string :address_line_1
      t.string :address_line_2
      t.string :city
      t.string :postal_code
      t.string :telephone
      t.string :fax
      t.decimal :latitude
      t.decimal :longitude
      t.integer :sunday_open
      t.integer :sunday_close
      t.integer :monday_open
      t.integer :monday_close
      t.integer :tuesday_open
      t.integer :tuesday_close
      t.integer :wednesday_open
      t.integer :wednesday_close
      t.integer :thursday_open
      t.integer :thursday_close
      t.integer :friday_open
      t.integer :friday_close
      t.integer :saturday_open
      t.integer :saturday_close
      t.boolean :has_wheelchair_accessibility
      t.boolean :has_beer_cold_room
      t.boolean :has_parking
      t.boolean :has_transit_access
    end
  end
end
