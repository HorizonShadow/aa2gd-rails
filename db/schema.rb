# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_05_12_224356) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "connections", force: :cascade do |t|
    t.string "ext_id"
    t.string "name"
    t.string "type"
    t.boolean "revoked"
    t.integer "visibility"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_connections_on_user_id"
  end

  create_table "game_users", force: :cascade do |t|
    t.bigint "game_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_id"], name: "index_game_users_on_game_id"
    t.index ["user_id"], name: "index_game_users_on_user_id"
  end

  create_table "games", force: :cascade do |t|
    t.integer "appid"
    t.string "name"
    t.integer "playtime_forever"
    t.string "img_icon_url"
    t.string "img_logo_url"
    t.boolean "has_community_visible_stats"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "servers", force: :cascade do |t|
    t.string "ext_id"
    t.string "name"
    t.string "icon"
    t.boolean "owner"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "time_table_time_values", force: :cascade do |t|
    t.bigint "time_table_id", null: false
    t.bigint "time_value_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["time_table_id"], name: "index_time_table_time_values_on_time_table_id"
    t.index ["time_value_id"], name: "index_time_table_time_values_on_time_value_id"
  end

  create_table "time_tables", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "time_values", force: :cascade do |t|
    t.integer "hour"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "ext_id"
    t.string "username"
    t.string "avatar"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "game_users", "games"
  add_foreign_key "game_users", "users"
  add_foreign_key "time_table_time_values", "time_tables"
  add_foreign_key "time_table_time_values", "time_values"
end
