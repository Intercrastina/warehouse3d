# encoding: UTF-8
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

ActiveRecord::Schema.define(:version => 20130723173736) do

  create_table "assemblies", :force => true do |t|
    t.string   "name"
    t.integer  "printing_time"
    t.integer  "printing_cost"
    t.text     "description"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "extras", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "cost"
    t.integer  "step_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "pieces", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "assembly_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "step_links", :force => true do |t|
    t.integer  "step_id"
    t.integer  "piece_id"
    t.integer  "extra_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "steps", :force => true do |t|
    t.integer  "order"
    t.text     "description"
    t.integer  "assembly_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
