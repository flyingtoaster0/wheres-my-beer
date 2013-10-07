# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Product.create({:id => 288506, :name => "Amsterdam Boneshaker", :price_in_cents => 1345, :regular_price_in_cents => 1345, :clearance_sale_savings_in_cents => 0, :limited_time_offer_savings_in_cents => 0, :stock_type => "LCBO", :primary_category => "Beer", :secondary_category => "Ale", :tertiary_category => "India Pale Ale (IPA)", :origin => "Ontario, Canada", :package => "6x355 mL bottle", :package_unit_type => "bottle", :package_unit_volume_in_milliliters => 355, :total_package_units => 6, :total_package_volume_in_milliliters => 2130, :volume_in_milliliters => 2130, :alcohol_content => 710, :price_per_liter_of_alcohol_in_cents => 889, :price_per_liter_in_cents => 631, :producer_name => "Amsterdam Brewing Company", :image_thumb_url => "http://lcbo.com/assets/products/234x234/0288506.jpg", :image_url => "http://lcbo.com/assets/products/720x720/0288506.jpg"})

Store.create({:id=>568, :name=>"Yonge & Dundas", :address_line_1=>"595 Bay Street", :address_line_2=>"Lower Concourse", :city=>"Toronto-Central", :postal_code=>"M5G 2C2", :telephone=>"(416) 979-9978", :fax=>"(416) 979-0988", :latitude=>43.6563, :longitude=>-79.3813, :sunday_open=>720, :sunday_close=>1080, :monday_open=>600, :monday_close=>1320, :tuesday_open=>600, :tuesday_close=>1320, :wednesday_open=>600, :wednesday_close=>1320, :thursday_open=>600, :thursday_close=>1320, :friday_open=>600, :friday_close=>1320, :saturday_open=>600, :saturday_close=>1320, :has_wheelchair_accessibility=>true, :has_bilingual_services=>true, :has_product_consultant=>false, :has_tasting_bar=>true, :has_beer_cold_room=>false, :has_parking=>false, :has_transit_access=>true})
Store.create({:id=>569, :name=>"Yonge & Dundas2", :address_line_1=>"595 Bay Street", :address_line_2=>"Lower Concourse", :city=>"Toronto-Central", :postal_code=>"M5G 2C2", :telephone=>"(416) 979-9978", :fax=>"(416) 979-0988", :latitude=>43.6563, :longitude=>-79.3813, :sunday_open=>720, :sunday_close=>1080, :monday_open=>600, :monday_close=>1320, :tuesday_open=>600, :tuesday_close=>1320, :wednesday_open=>600, :wednesday_close=>1320, :thursday_open=>600, :thursday_close=>1320, :friday_open=>600, :friday_close=>1320, :saturday_open=>600, :saturday_close=>1320, :has_wheelchair_accessibility=>true, :has_bilingual_services=>true, :has_product_consultant=>false, :has_tasting_bar=>true, :has_beer_cold_room=>false, :has_parking=>false, :has_transit_access=>true})

Inventory.create({:product_id => 288506, :store_id => 568, :quantity => 42})
Inventory.create({:product_id => 288506, :store_id => 569, :quantity => 43})