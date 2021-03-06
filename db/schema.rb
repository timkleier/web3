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

ActiveRecord::Schema.define(version: 2022_01_12_005627) do

  create_table "resources", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "url"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "term_definitions", force: :cascade do |t|
    t.text "description"
    t.string "source_url"
    t.string "source_name"
    t.integer "term_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["term_id"], name: "index_term_definitions_on_term_id"
  end

  create_table "terms", force: :cascade do |t|
    t.string "name"
    t.string "short_form"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_definition_votes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "term_definition_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["term_definition_id"], name: "index_user_definition_votes_on_term_definition_id"
    t.index ["user_id"], name: "index_user_definition_votes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
