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

ActiveRecord::Schema.define(version: 20170317185929) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.date     "date"
    t.string   "location"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "organization_id"
    t.time     "start_time"
    t.time     "end_time"
    t.integer  "capacity"
    t.integer  "hours"
  end

  create_table "events_users", force: :cascade do |t|
    t.integer "user_id"
    t.integer "event_id"
    t.index ["event_id"], name: "index_events_users_on_event_id", using: :btree
    t.index ["user_id"], name: "index_events_users_on_user_id", using: :btree
  end

  create_table "organizations", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.text     "location"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.string   "imageURL"
    t.string   "image_url"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password_digest"
    t.string   "region"
    t.integer  "volunteer_position"
    t.date     "date_of_birth"
    t.string   "summary"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
    t.boolean  "org_admin"
    t.integer  "hours"
    t.string   "skills"
    t.integer  "goals"
    t.string   "skill1"
    t.string   "skill2"
    t.string   "skill3"
    t.string   "skill4"
    t.string   "skill5"
  end

end
