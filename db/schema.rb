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

ActiveRecord::Schema.define(version: 20190918193908) do

  create_table "buttons", force: :cascade do |t|
    t.string "buttonLabel"
    t.string "buttonUrl"
    t.integer "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_buttons_on_subject_id"
  end

  create_table "fields", force: :cascade do |t|
    t.string "fieldName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "infos", force: :cascade do |t|
    t.string "infoTitle"
    t.text "infoText"
    t.integer "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_infos_on_subject_id"
  end

  create_table "links", force: :cascade do |t|
    t.string "linkUrl"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "linkWeek"
    t.integer "subject_id"
    t.integer "semester_id"
    t.integer "field_id"
    t.integer "type_id"
    t.string "creator"
    t.string "editor"
    t.index ["field_id"], name: "index_links_on_field_id"
    t.index ["semester_id"], name: "index_links_on_semester_id"
    t.index ["subject_id"], name: "index_links_on_subject_id"
    t.index ["type_id"], name: "index_links_on_type_id"
  end

  create_table "semesters", force: :cascade do |t|
    t.integer "semesterHalf"
    t.integer "semesterYear"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string "subjectName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "semester_id"
    t.integer "field_id"
    t.integer "year"
    t.integer "startWeek"
    t.index ["field_id"], name: "index_subjects_on_field_id"
    t.index ["semester_id"], name: "index_subjects_on_semester_id"
  end

  create_table "types", force: :cascade do |t|
    t.string "typeName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role"
    t.integer "field_id"
    t.index ["field_id"], name: "index_users_on_field_id"
  end

end
