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

ActiveRecord::Schema.define(version: 20190511201508) do

  create_table "audits", force: :cascade do |t|
    t.integer "auditable_id"
    t.string "auditable_type"
    t.integer "associated_id"
    t.string "associated_type"
    t.integer "user_id"
    t.string "user_type"
    t.string "username"
    t.string "action"
    t.text "audited_changes"
    t.integer "version", default: 0
    t.string "comment"
    t.string "remote_address"
    t.string "request_uuid"
    t.datetime "created_at"
    t.index ["associated_type", "associated_id"], name: "associated_index"
    t.index ["auditable_type", "auditable_id", "version"], name: "auditable_index"
    t.index ["created_at"], name: "index_audits_on_created_at"
    t.index ["request_uuid"], name: "index_audits_on_request_uuid"
    t.index ["user_id", "user_type"], name: "user_index"
  end

  create_table "bookcases", force: :cascade do |t|
    t.integer "book_id"
    t.integer "user_id"
    t.datetime "taken_at"
    t.datetime "returned_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "state"
    t.index ["book_id"], name: "index_bookcases_on_book_id"
    t.index ["user_id"], name: "index_bookcases_on_user_id"
  end

  create_table "books", force: :cascade do |t|
    t.string "status"
    t.string "name"
    t.string "author"
    t.string "publishing"
    t.integer "year_publishing"
    t.integer "age_restrictions"
    t.integer "user_id"
    t.integer "user_current"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "state"
  end

# Could not dump table "tramway_landing_blocks" because of following StandardError
#   Unknown type 'jsonb' for column 'button'

  create_table "tramway_user_users", force: :cascade do |t|
    t.text "email"
    t.text "password_digest"
    t.text "first_name"
    t.text "last_name"
    t.text "patronymic"
    t.text "avatar"
    t.text "state"
    t.text "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "date_birth"
    t.string "city"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "state"
    t.string "password_digest"
    t.string "remember_digest"
  end

end
