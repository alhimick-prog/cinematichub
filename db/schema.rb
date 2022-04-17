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

ActiveRecord::Schema.define(version: 2022_04_17_220049) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_categories_on_name"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name", null: false
    t.string "banner", default: "🏳️", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "episodes", force: :cascade do |t|
    t.bigint "season_id", null: false
    t.string "title", null: false
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["season_id"], name: "index_episodes_on_season_id"
  end

  create_table "film_categories", force: :cascade do |t|
    t.bigint "film_id", null: false
    t.bigint "category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_film_categories_on_category_id"
    t.index ["film_id"], name: "index_film_categories_on_film_id"
  end

  create_table "film_countries", force: :cascade do |t|
    t.bigint "country_id", null: false
    t.bigint "film_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_id"], name: "index_film_countries_on_country_id"
    t.index ["film_id"], name: "index_film_countries_on_film_id"
  end

  create_table "film_people", force: :cascade do |t|
    t.bigint "film_id", null: false
    t.bigint "person_id", null: false
    t.string "role", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["film_id"], name: "index_film_people_on_film_id"
    t.index ["person_id"], name: "index_film_people_on_person_id"
  end

  create_table "film_tags", force: :cascade do |t|
    t.bigint "film_id", null: false
    t.bigint "tag_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["film_id"], name: "index_film_tags_on_film_id"
    t.index ["tag_id"], name: "index_film_tags_on_tag_id"
  end

  create_table "films", force: :cascade do |t|
    t.string "title", null: false
    t.text "description"
    t.text "trailer_url"
    t.date "release_date", default: "1970-01-01", null: false
    t.integer "duration", null: false
    t.integer "age_restriction", default: 0, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "surname", null: false
    t.string "patronymic"
    t.date "birthday"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.text "text", null: false
    t.integer "rating", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "seasons", force: :cascade do |t|
    t.bigint "film_id", null: false
    t.integer "number"
    t.string "title", null: false
    t.text "description"
    t.date "release_date", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["film_id"], name: "index_seasons_on_film_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "episodes", "seasons"
  add_foreign_key "film_categories", "categories"
  add_foreign_key "film_categories", "films"
  add_foreign_key "film_countries", "countries"
  add_foreign_key "film_countries", "films"
  add_foreign_key "film_people", "films"
  add_foreign_key "film_people", "people"
  add_foreign_key "film_tags", "films"
  add_foreign_key "film_tags", "tags"
  add_foreign_key "seasons", "films"
end
