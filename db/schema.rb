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

ActiveRecord::Schema.define(version: 2020_12_09_203718) do

  create_table "permits", force: :cascade do |t|
    t.string "location"
    t.string "permite_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_permits", force: :cascade do |t|
    t.integer "user_id_id", null: false
    t.integer "permit_id_id", null: false
    t.date "application_date"
    t.boolean "is_permit"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["permit_id_id"], name: "index_user_permits_on_permit_id_id"
    t.index ["user_id_id"], name: "index_user_permits_on_user_id_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "user_address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "user_permits", "permit_ids"
  add_foreign_key "user_permits", "user_ids"
end
