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

ActiveRecord::Schema.define(version: 6) do

  create_table "album_joiners", force: :cascade do |t|
    t.integer "album_id"
    t.integer "artist_id"
  end

  create_table "albums", force: :cascade do |t|
    t.string "name"
    t.integer "album_joiner_id"
    t.string "genre"
  end

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.string "genre"
    t.datetime "birthdate"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "song_id"
    t.integer "user_id"
    t.integer "rating"
    t.string "phrase"
  end

  create_table "songs", force: :cascade do |t|
    t.string "name"
    t.string "genre"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.string "avatar_url"
    t.datetime "birthdate"
  end

end
