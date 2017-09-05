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

ActiveRecord::Schema.define(version: 20170823063923) do

  create_table "announcements", force: :cascade do |t|
    t.integer "admin_id", null: false
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "title"
  end

  create_table "author_books", force: :cascade do |t|
    t.integer "author_id", null: false
    t.integer "book_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"
  end

  create_table "blog_books", force: :cascade do |t|
    t.integer "blog_id", null: false
    t.integer "book_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "blogs", force: :cascade do |t|
    t.integer "user_id", null: false
    t.text "content"
    t.string "description"
    t.string "title", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status", default: 0
  end

  create_table "book_categories", force: :cascade do |t|
    t.integer "book_id", null: false
    t.integer "category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "book_items", force: :cascade do |t|
    t.integer "book_id", null: false
    t.string "location"
    t.integer "state"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "book_marks", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "book_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "book_tags", force: :cascade do |t|
    t.integer "book_id", null: false
    t.integer "tag_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.integer "publisher_id"
    t.integer "language_id"
    t.string "isbn", null: false
    t.integer "series_id"
    t.string "dimension"
    t.integer "pages"
    t.string "weight"
    t.string "title", null: false
    t.datetime "public_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "rate"
    t.integer "rate_count"
    t.text "description"
  end

  create_table "borrows", force: :cascade do |t|
    t.integer "book_id", null: false
    t.integer "user_id", null: false
    t.integer "status", default: 0
    t.integer "book_item_id", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "time_start"
    t.datetime "time_end"
    t.text "note"
  end

  create_table "categories", force: :cascade do |t|
    t.integer "parent_id"
    t.string "title"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
  end

  create_table "comments", force: :cascade do |t|
    t.integer "target_id", null: false
    t.string "target_type", null: false
    t.integer "parent_id"
    t.integer "user_id", null: false
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ebooks", force: :cascade do |t|
    t.integer "book_id", null: false
    t.string "format", null: false
    t.string "link", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "feedbacks", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "state", default: 0
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "follows", force: :cascade do |t|
    t.integer "author_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: :cascade do |t|
    t.integer "target_id", null: false
    t.string "target_type", null: false
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "languages", force: :cascade do |t|
    t.string "alias", null: false
    t.string "full_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notifications", force: :cascade do |t|
    t.integer "user_id", null: false
    t.text "content"
    t.boolean "read", default: false
    t.string "link_to"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "raw"
    t.string "target"
    t.integer "target_id"
  end

  create_table "publishers", force: :cascade do |t|
    t.string "name", null: false
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rates", force: :cascade do |t|
    t.integer "book_id", null: false
    t.integer "user_id", null: false
    t.integer "score", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requests", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "request_type", default: 0, null: false
    t.string "link"
    t.integer "status", default: 0, null: false
    t.text "content"
    t.integer "admin_approve_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "series", force: :cascade do |t|
    t.string "title", null: false
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "settings", force: :cascade do |t|
    t.string "key"
    t.string "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suggest_books", force: :cascade do |t|
    t.integer "sender_id", null: false
    t.integer "receiver_id", null: false
    t.integer "book_id", null: false
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "title", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_settings", force: :cascade do |t|
    t.integer "user_id", null: false
    t.boolean "notification_to_email", default: false, null: false
    t.integer "language"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role"
    t.string "name"
    t.string "staff_code"
    t.string "avatar"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "votes", force: :cascade do |t|
    t.integer "target_id", null: false
    t.string "target_type", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
