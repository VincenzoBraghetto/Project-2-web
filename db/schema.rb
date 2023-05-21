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

ActiveRecord::Schema[7.0].define(version: 2023_05_21_060928) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "administrators", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.string "email"
    t.string "telephone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "ticket_id", null: false
    t.bigint "executive_id", null: false
    t.index ["executive_id"], name: "index_comments_on_executive_id"
    t.index ["ticket_id"], name: "index_comments_on_ticket_id"
  end

  create_table "executives", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.string "email"
    t.string "telephone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "feedbacks", force: :cascade do |t|
    t.integer "evaluation"
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "ticket_id", null: false
    t.bigint "executive_id", null: false
    t.bigint "requesting_user_id", null: false
    t.index ["executive_id"], name: "index_feedbacks_on_executive_id"
    t.index ["requesting_user_id"], name: "index_feedbacks_on_requesting_user_id"
    t.index ["ticket_id"], name: "index_feedbacks_on_ticket_id"
  end

  create_table "requesting_users", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.string "email"
    t.string "telephone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resolutions", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "ticket_id", null: false
    t.bigint "executive_id", null: false
    t.index ["executive_id"], name: "index_resolutions_on_executive_id"
    t.index ["ticket_id"], name: "index_resolutions_on_ticket_id"
  end

  create_table "supervisors", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.string "email"
    t.string "telephone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "state"
    t.string "tags"
    t.string "priority"
    t.string "response"
    t.string "attached_documents"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "executive_id", null: false
    t.bigint "requesting_user_id", null: false
    t.index ["executive_id"], name: "index_tickets_on_executive_id"
    t.index ["requesting_user_id"], name: "index_tickets_on_requesting_user_id"
  end

  add_foreign_key "comments", "executives"
  add_foreign_key "comments", "tickets"
  add_foreign_key "feedbacks", "executives"
  add_foreign_key "feedbacks", "requesting_users"
  add_foreign_key "feedbacks", "tickets"
  add_foreign_key "resolutions", "executives"
  add_foreign_key "resolutions", "tickets"
  add_foreign_key "tickets", "executives"
  add_foreign_key "tickets", "requesting_users"
end
