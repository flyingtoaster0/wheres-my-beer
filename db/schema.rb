# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20131007004039) do

  create_table "inventories", id: false, force: true do |t|
    t.integer "store_id"
    t.integer "product_id"
    t.integer "quantity"
  end

  create_table "products", force: true do |t|
    t.string  "name"
    t.integer "price_in_cents"
    t.integer "regular_price_in_cents"
    t.integer "clearance_sale_savings_in_cents"
    t.integer "limited_time_offer_savings_in_cents"
    t.string  "stock_type"
    t.string  "primary_category"
    t.string  "secondary_category"
    t.string  "tertiary_category"
    t.string  "origin"
    t.string  "package"
    t.string  "package_unit_type"
    t.integer "package_unit_volume_in_milliliters"
    t.integer "total_package_units"
    t.integer "total_package_volume_in_milliliters"
    t.integer "volume_in_milliliters"
    t.integer "alcohol_content"
    t.integer "price_per_liter_of_alcohol_in_cents"
    t.integer "price_per_liter_in_cents"
    t.string  "producer_name"
    t.string  "image_thumb_url"
    t.string  "image_url"
  end

  add_index "products", ["id"], name: "sqlite_autoindex_products_1", unique: true

  create_table "stores", force: true do |t|
    t.string  "name"
    t.string  "address_line_1"
    t.string  "address_line_2"
    t.string  "city"
    t.string  "postal_code"
    t.string  "telephone"
    t.string  "fax"
    t.integer "latitude"
    t.integer "longitude"
    t.integer "sunday_open"
    t.integer "sunday_close"
    t.integer "monday_open"
    t.integer "monday_close"
    t.integer "tuesday_open"
    t.integer "tuesday_close"
    t.integer "wednesday_open"
    t.integer "wednesday_close"
    t.integer "thursday_open"
    t.integer "thursday_close"
    t.integer "friday_open"
    t.integer "friday_close"
    t.integer "saturday_open"
    t.integer "saturday_close"
    t.boolean "has_wheelchair_accessibility"
    t.boolean "has_bilingual_services"
    t.boolean "has_product_consultant"
    t.boolean "has_tasting_bar"
    t.boolean "has_beer_cold_room"
    t.boolean "has_parking"
    t.boolean "has_transit_access"
  end

  add_index "stores", ["id"], name: "sqlite_autoindex_stores_1", unique: true

end
