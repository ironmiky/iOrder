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

ActiveRecord::Schema.define(:version => 20100927151216) do

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ordered_products", :force => true do |t|
    t.integer  "product_id"
    t.integer  "quantity"
    t.integer  "order_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", :force => true do |t|
    t.integer  "order_number"
    t.integer  "table_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.float    "content"
    t.integer  "category_id"
    t.float    "price"
    t.string   "brand"
    t.float    "selling_price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prs", :force => true do |t|
    t.string   "name"
    t.string   "cellphone"
    t.string   "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tables", :force => true do |t|
    t.integer  "number"
    t.string   "name"
    t.integer  "people"
    t.integer  "free"
    t.float    "price"
    t.integer  "pr_id"
    t.string   "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
