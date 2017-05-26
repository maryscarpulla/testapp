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

ActiveRecord::Schema.define(version: 20170526030635) do

  create_table "mycellarwines", force: :cascade do |t|
    t.string   "wine_name"
    t.string   "year"
    t.integer  "price"
    t.integer  "varietal_id"
    t.string   "winery"
    t.boolean  "bucket_list_wine"
    t.integer  "image_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "stars"
    t.string   "review_full_text"
    t.integer  "user_id"
    t.integer  "wine_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "suggested_wines", force: :cascade do |t|
    t.integer  "wine_id"
    t.integer  "user_id_from"
    t.integer  "user_id_to"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasting_note_tags", force: :cascade do |t|
    t.string   "tasting_note_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "picture_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "varietals", force: :cascade do |t|
    t.string   "varietal_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wine_tag_pairs", force: :cascade do |t|
    t.integer  "wine_id"
    t.integer  "tag_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
