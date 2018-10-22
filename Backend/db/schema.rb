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

ActiveRecord::Schema.define(version: 2018_10_22_234130) do

  create_table "activities", force: :cascade do |t|
    t.integer "code_activity"
    t.string "name_activity"
    t.string "description_activity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "activities_x_subjects", force: :cascade do |t|
    t.integer "Subjects_id"
    t.integer "Activities_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Activities_id"], name: "index_activities_x_subjects_on_Activities_id"
    t.index ["Subjects_id"], name: "index_activities_x_subjects_on_Subjects_id"
  end

  create_table "benefit_x_universities", force: :cascade do |t|
    t.integer "University_id"
    t.integer "Benefit_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Benefit_id"], name: "index_benefit_x_universities_on_Benefit_id"
    t.index ["University_id"], name: "index_benefit_x_universities_on_University_id"
  end

  create_table "benefits", force: :cascade do |t|
    t.integer "code_benefit"
    t.string "name_benefit"
    t.string "description_benefit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.integer "code_city"
    t.string "name_city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "course_x_entities", force: :cascade do |t|
    t.integer "Entity_id"
    t.integer "Courses_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Courses_id"], name: "index_course_x_entities_on_Courses_id"
    t.index ["Entity_id"], name: "index_course_x_entities_on_Entity_id"
  end

  create_table "courses", force: :cascade do |t|
    t.integer "code_course"
    t.string "name_course"
    t.string "description_course"
    t.string "url_course"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "debilities", force: :cascade do |t|
    t.integer "code_debility"
    t.string "name_debility"
    t.string "description_debility"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "entities", force: :cascade do |t|
    t.integer "code_entity"
    t.string "name_entity"
    t.string "address_entity"
    t.string "description_entity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genders", force: :cascade do |t|
    t.integer "code_gender"
    t.string "name_gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "habilities", force: :cascade do |t|
    t.integer "code_hability"
    t.string "name_hability"
    t.string "description_hability"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notes", force: :cascade do |t|
    t.integer "code_note"
    t.string "valuenote_note"
    t.string "description_note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notes_x_subjects", force: :cascade do |t|
    t.integer "Subjects_id"
    t.integer "Notes_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Notes_id"], name: "index_notes_x_subjects_on_Notes_id"
    t.index ["Subjects_id"], name: "index_notes_x_subjects_on_Subjects_id"
  end

  create_table "programs", force: :cascade do |t|
    t.integer "code_program"
    t.string "name_program"
    t.string "description_program"
    t.string "url_program"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "programs_x_universities", force: :cascade do |t|
    t.integer "Programs_id"
    t.integer "University_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Programs_id"], name: "index_programs_x_universities_on_Programs_id"
    t.index ["University_id"], name: "index_programs_x_universities_on_University_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.integer "code_subject"
    t.string "name_subject"
    t.string "description_subject"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "type_people", force: :cascade do |t|
    t.integer "code_type"
    t.string "name_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "universities", force: :cascade do |t|
    t.integer "code_university"
    t.string "name_university"
    t.string "address_uiversity"
    t.string "email_university"
    t.string "description_university"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "university_x_cities", force: :cascade do |t|
    t.integer "University_id"
    t.integer "City_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["City_id"], name: "index_university_x_cities_on_City_id"
    t.index ["University_id"], name: "index_university_x_cities_on_University_id"
  end

end
