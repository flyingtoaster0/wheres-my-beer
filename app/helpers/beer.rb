module Beer
  def import_product_from_online id
    online_product = LCBO.product(id)

    new_product = Product.where(:id => id).first_or_create
    new_product = Product.new if new_product.nil?

    new_product.id = online_product[:id]
    new_product.name = online_product[:name]
    new_product.price_in_cents = online_product[:price_in_cents]
    new_product.regular_price_in_cents = online_product[:regular_price_in_cents]
    new_product.stock_type = online_product[:stock_type]
    new_product.primary_category = online_product[:primary_category]
    new_product.secondary_category = online_product[:secondary_category]
    new_product.tertiary_category = online_product[:tertiary_category]
    new_product.origin = online_product[:origin]
    new_product.package = online_product[:package]
    new_product.package_unit_type = online_product[:package_unit_type]
    new_product.total_package_volume_in_milliliters = online_product[:total_package_volume_in_milliliters]
    new_product.total_package_units = online_product[:total_package_units]
    new_product.volume_in_milliliters = online_product[:volume_in_milliliters]
    new_product.alcohol_content = online_product[:alcohol_content]
    new_product.price_per_liter_in_cents = online_product[:price_per_liter_in_cents]
    new_product.producer_name = online_product[:producer_name]
    new_product.image_thumb_url = online_product[:image_thumb_url]
    new_product.image_url = online_product[:image_url]
    new_product.save
  end


  def import_store_from_online id
    online_store = LCBO.store(id)

    new_store = Store.where(:id => id).first_or_create

    new_store.id = online_store[:id]
    new_store.name = online_store[:name]
    new_store.address_line_1 = online_store[:address_line_1]
    new_store.address_line_2 = online_store[:address_line_2]
    new_store.city = online_store[:city]
    new_store.postal_code = online_store[:postal_code]
    new_store.telephone = online_store[:telephone]
    new_store.fax = online_store[:fax]
    new_store.latitude = online_store[:latitude]
    new_store.longitude = online_store[:longitude]
    new_store.sunday_open = online_store[:sunday_open]
    new_store.sunday_close = online_store[:sunday_close]
    new_store.monday_open = online_store[:monday_open]
    new_store.monday_close = online_store[:monday_close]
    new_store.tuesday_open = online_store[:tuesday_open]
    new_store.tuesday_close = online_store[:tuesday_close]
    new_store.wednesday_open = online_store[:wednesday_open]
    new_store.wednesday_close = online_store[:wednesday_close]
    new_store.thursday_open = online_store[:thursday_open]
    new_store.thursday_close = online_store[:thursday_close]
    new_store.friday_open = online_store[:friday_open]
    new_store.friday_close = online_store[:friday_close]
    new_store.saturday_open = online_store[:saturday_open]
    new_store.saturday_close = online_store[:saturday_close]
    new_store.has_wheelchair_accessibility = online_store[:has_wheelchair_accessibility]
    new_store.has_beer_cold_room = online_store[:has_beer_cold_room]
    new_store.has_parking = online_store[:has_parking]
    new_store.has_transit_access = online_store[:has_transit_access]
    new_store.save
  end

  def import_inventories_for_product id
    online_inventories = LCBO.inventory(id)

    online_inventories[:inventories].each do |i|
      new_inventory = Inventory.where(store_id: i[:store_id], product_id: id).first_or_create
      new_inventory.product_id = id
      new_inventory.quantity = i[:quantity]
      new_inventory.save
    end
  end
end
