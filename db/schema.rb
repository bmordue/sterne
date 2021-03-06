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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120501193304) do

  create_table "games", :force => true do |t|
    t.integer  "universe_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "games_players", :id => false, :force => true do |t|
    t.integer "game_id",   :null => false
    t.integer "player_id", :null => false
  end

  add_index "games_players", ["game_id", "player_id"], :name => "index_games_players_on_game_id_and_player_id", :unique => true

  create_table "planets", :force => true do |t|
    t.integer  "player_id"
    t.integer  "locationX"
    t.integer  "locationY"
    t.integer  "manufacturing"
    t.integer  "growth"
    t.integer  "research"
    t.integer  "population"
    t.integer  "science"
    t.string   "name"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "universe_id"
  end

  create_table "players", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
  end

  add_index "players", ["email"], :name => "index_players_on_email", :unique => true

  create_table "ship_types", :force => true do |t|
    t.string   "name"
    t.integer  "attack"
    t.integer  "defense"
    t.integer  "speed"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ships", :force => true do |t|
    t.integer  "player_id"
    t.integer  "locationX"
    t.integer  "locationY"
    t.integer  "destination"
    t.integer  "hitpoints"
    t.integer  "shiptype_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "universe_id"
  end

  create_table "universes", :force => true do |t|
    t.integer  "turn"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
