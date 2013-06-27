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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130627202311) do

  create_table "analyses", :force => true do |t|
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "bedrooms"
    t.integer  "price"
    t.string   "address"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.boolean  "processed",     :default => false
    t.integer  "average_price"
    t.boolean  "failed",        :default => false
    t.integer  "radius"
    t.string   "tags"
  end

  create_table "analyses_listings", :id => false, :force => true do |t|
    t.integer "analysis_id"
    t.integer "listing_id"
  end

  create_table "listing_comparisons", :force => true do |t|
    t.integer  "listing_1_id"
    t.integer  "listing_2_id"
    t.float    "score"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.integer  "duplicate",      :default => 0
    t.float    "address_score"
    t.float    "bedrooms_score"
    t.float    "location_score"
    t.float    "price_score"
  end

  create_table "listing_details", :force => true do |t|
    t.string   "source"
    t.text     "body"
    t.string   "body_type"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "user_id"
    t.string   "u_id"
    t.text     "description"
  end

  create_table "listing_importers", :force => true do |t|
    t.integer  "user_id"
    t.string   "api_key"
    t.string   "source"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "metro"
  end

  create_table "listing_tags", :force => true do |t|
    t.integer  "listing_id"
    t.integer  "tag_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "listings", :force => true do |t|
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "bedrooms"
    t.integer  "price"
    t.string   "address"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "listing_detail_id"
    t.integer  "user_id"
    t.datetime "expired_at"
    t.integer  "timestamp"
    t.string   "bathrooms"
  end

  create_table "tags", :force => true do |t|
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "display"
    t.string   "search_term"
    t.integer  "complexity"
    t.string   "name"
    t.string   "category"
  end

end
