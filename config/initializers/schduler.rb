include Beer
scheduler = Rufus::Scheduler.new

scheduler.cron '0 0 * * *' do
  #Get the products
  product_ids = ProductsCrawler.run
  product_ids.each{ |id| Beer.import_product_from_online(id) }


  #Get the stores
  store_ids = StoresCrawler.run
  store_ids.each{ |id| Beer.import_store_from_online(id) }


  #then, for each product, grab the inventories
  product_ids.each{ |id| import_inventories_for_product id }

end