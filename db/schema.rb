# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_25_064923) do

  create_table "categories", force: :cascade do |t|
    t.string "botanical_name"
    t.string "common_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "neighbourhoods", force: :cascade do |t|
    t.string "neighbourhood_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "parks", force: :cascade do |t|
    t.string "park_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "trees", force: :cascade do |t|
    t.integer "source_id"
    t.integer "diameter"
    t.string "latitude"
    t.string "longitude"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "category_id", null: false
    t.integer "neighbourhood_id", null: false
    t.integer "park_id", null: false
    t.index ["category_id"], name: "index_trees_on_category_id"
    t.index ["neighbourhood_id"], name: "index_trees_on_neighbourhood_id"
    t.index ["park_id"], name: "index_trees_on_park_id"
  end

  add_foreign_key "trees", "categories"
  add_foreign_key "trees", "neighbourhoods"
  add_foreign_key "trees", "parks"
end
