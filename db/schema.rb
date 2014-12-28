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

ActiveRecord::Schema.define(version: 20141222073155) do

  create_table "faculties", force: :cascade do |t|
    t.string   "name"
    t.text     "information"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "lecturers", force: :cascade do |t|
    t.string   "fullname"
    t.string   "degree"
    t.integer  "salary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lessons", force: :cascade do |t|
    t.string   "name"
    t.integer  "lecturer_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "lessons", ["lecturer_id"], name: "index_lessons_on_lecturer_id"

  create_table "recordbooks", force: :cascade do |t|
    t.float    "gpatests"
    t.float    "gpaexams"
    t.integer  "bursaly"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "fullname"
    t.date     "birthday"
    t.integer  "Recordbook_id"
    t.integer  "Faculty_id"
    t.string   "group"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "students", ["Faculty_id"], name: "index_students_on_Faculty_id"
  add_index "students", ["Recordbook_id"], name: "index_students_on_Recordbook_id"

end
