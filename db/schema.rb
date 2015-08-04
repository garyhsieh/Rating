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

ActiveRecord::Schema.define(:version => 20150803033323) do

  create_table "participant_ratings", :force => true do |t|
    t.integer  "participant_id"
    t.decimal  "score",          :precision => 10, :scale => 0
    t.integer  "video_id"
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
  end

  create_table "participants", :force => true do |t|
    t.string   "worker_id"
    t.string   "hit_id"
    t.string   "assignment_id"
    t.integer  "condition"
    t.string   "ip_address"
    t.string   "video_id_array"
    t.string   "distribution_array"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "question_set1s", :force => true do |t|
    t.integer  "participant_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

end
