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

ActiveRecord::Schema[7.0].define(version: 2022_06_25_144810) do
  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.integer "phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pet_histories", force: :cascade do |t|
    t.integer "pets_id"
    t.float "weigth"
    t.float "height"
    t.text "description"
    t.integer "Pet_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Pet_id"], name: "index_pet_histories_on_Pet_id"
  end

  create_table "pets", force: :cascade do |t|
    t.string "name"
    t.string "race"
    t.date "birthday"
    t.integer "Client_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Client_id"], name: "index_pets_on_Client_id"
  end

  add_foreign_key "pet_histories", "Pets"
  add_foreign_key "pets", "Clients"
end