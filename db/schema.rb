# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.

# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20151019183103) do

  create_table "adds", force: true do |t|
    t.integer  "user_id"
    t.integer  "song_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "adds", ["song_id"], name: "index_adds_on_song_id"
  add_index "adds", ["user_id"], name: "index_adds_on_user_id"

  create_table "songs", force: true do |t|
    t.string   "artist"
    t.string   "title"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "songs", ["user_id"], name: "index_songs_on_user_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
