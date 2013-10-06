scheduler = Rufus::Scheduler.new

#scheduler.cron '0 0 * * *' do
  #Get the product IDs
  #x = ProductsCrawler.run

  #Get product info
  #x = LCBO.product(83)

  #Get the store IDs
  #x = StoresCrawler.run

  #Get information about the stores
  #x = LCBO.store(93)
  #{:id=>93, :name=>"Garrison & Concession", :tags=>["garrison", "concession", "310", "road", "fort", "erie", "l2a", "1m7"], :address_line_1=>"310 Garrison Road", :address_line_2=>nil, :city=>"Fort Erie", :postal_code=>"L2A 1M7", :telephone=>"(905) 871-0562", :fax=>"(905) 871-1171", :latitude=>42.9053, :longitude=>-78.9274, :sunday_open=>720, :sunday_close=>1020, :monday_open=>600, :monday_close=>1260, :tuesday_open=>600, :tuesday_close=>1260, :wednesday_open=>600, :wednesday_close=>1260, :thursday_open=>600, :thursday_close=>1260, :friday_open=>600, :friday_close=>1260, :saturday_open=>600, :saturday_close=>1260, :has_wheelchair_accessability=>true, :has_bilingual_services=>false, :has_product_consultant=>false, :has_tasting_bar=>true, :has_beer_cold_room=>false, :has_special_occasion_permits=>true, :has_vintages_corner=>true, :has_parking=>true, :has_transit_access=>false}


  #then, for each product, grab the inventories
  #x = LCBO.inventory(349423)
  #x[:updated_on]
  #x[:store_id]
  #x[:quantity]
#end