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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20130907151758) do

  create_table "course_types", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "code"
    t.integer  "credits"
    t.integer  "max_students"
    t.integer  "min_students"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "course_type_id"
    t.integer  "master_id"
    t.integer  "pensum_id"
  end

  create_table "masters", force: true do |t|
    t.string   "name"
    t.string   "code"
    t.text     "description"
    t.integer  "total_credits"
    t.integer  "max_duration"
    t.integer  "max_cred_semester"
    t.integer  "max_cred_intersem"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pensums", force: true do |t|
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "planned_pensums", force: true do |t|
    t.string   "semester"
    t.string   "semester_type"
    t.integer  "year"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "prerequisites", force: true do |t|
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "registrations", force: true do |t|
    t.date     "begin_date"
    t.date     "max_date_finish"
    t.integer  "total_approved_credits"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "master_id"
  end

  create_table "roles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "semester_registrations", force: true do |t|
    t.string   "semester"
    t.string   "semester_type"
    t.integer  "year"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "student_courses", force: true do |t|
    t.string   "state"
    t.date     "inscription"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "course_id"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "code"
    t.string   "email"
    t.string   "gender"
    t.integer  "role_id"
    t.date     "born_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
