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

ActiveRecord::Schema.define(version: 2018_10_18_035142) do

  create_table "activities", force: :cascade do |t|
    t.integer "code_activity"
    t.string "name_activity"
    t.string "description_activity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "activities_x_subjects", force: :cascade do |t|
    t.integer "code_subject_id"
    t.integer "code_activity_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code_activity_id"], name: "index_activities_x_subjects_on_code_activity_id"
    t.index ["code_subject_id"], name: "index_activities_x_subjects_on_code_subject_id"
  end

  create_table "benefit_x_universities", force: :cascade do |t|
    t.integer "code_benefit_id"
    t.integer "code_university_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code_benefit_id"], name: "index_benefit_x_universities_on_code_benefit_id"
    t.index ["code_university_id"], name: "index_benefit_x_universities_on_code_university_id"
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
    t.integer "code_entity_id"
    t.integer "code_course_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code_course_id"], name: "index_course_x_entities_on_code_course_id"
    t.index ["code_entity_id"], name: "index_course_x_entities_on_code_entity_id"
  end

  create_table "courses", force: :cascade do |t|
    t.integer "code_course"
    t.string "name_course"
    t.string "description_course"
    t.string "url_course"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deb_x_people", force: :cascade do |t|
    t.integer "code_debility_id"
    t.integer "code_person_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code_debility_id"], name: "index_deb_x_people_on_code_debility_id"
    t.index ["code_person_id"], name: "index_deb_x_people_on_code_person_id"
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

  create_table "hab_x_people", force: :cascade do |t|
    t.integer "code_hability_id"
    t.integer "code_person_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code_hability_id"], name: "index_hab_x_people_on_code_hability_id"
    t.index ["code_person_id"], name: "index_hab_x_people_on_code_person_id"
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
    t.integer "code_note_id"
    t.integer "code_subject_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code_note_id"], name: "index_notes_x_subjects_on_code_note_id"
    t.index ["code_subject_id"], name: "index_notes_x_subjects_on_code_subject_id"
  end

  create_table "people", force: :cascade do |t|
    t.integer "code_person"
    t.string "name_person"
    t.date "age_person"
    t.string "address_person"
    t.integer "code_gender_id"
    t.integer "code_city_id"
    t.integer "code_school_id"
    t.integer "code_type_id"
    t.string "password_person"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code_city_id"], name: "index_people_on_code_city_id"
    t.index ["code_gender_id"], name: "index_people_on_code_gender_id"
    t.index ["code_school_id"], name: "index_people_on_code_school_id"
    t.index ["code_type_id"], name: "index_people_on_code_type_id"
  end

  create_table "program_x_universities", force: :cascade do |t|
    t.integer "code_program_id"
    t.integer "code_university_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code_program_id"], name: "index_program_x_universities_on_code_program_id"
    t.index ["code_university_id"], name: "index_program_x_universities_on_code_university_id"
  end

  create_table "programs", force: :cascade do |t|
    t.integer "code_program"
    t.string "description_program"
    t.string "name_program"
    t.string "url_program"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schools", force: :cascade do |t|
    t.integer "code_school"
    t.string "name_school"
    t.string "address_school"
    t.string "phone_school"
    t.string "email_school"
    t.integer "code_city_id"
    t.integer "code_type_id"
    t.string "password_school"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code_city_id"], name: "index_schools_on_code_city_id"
    t.index ["code_type_id"], name: "index_schools_on_code_type_id"
  end

  create_table "subject_x_people", force: :cascade do |t|
    t.integer "code_person_id"
    t.integer "code_subject_id"
    t.string "decription"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code_person_id"], name: "index_subject_x_people_on_code_person_id"
    t.index ["code_subject_id"], name: "index_subject_x_people_on_code_subject_id"
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
    t.string "address_university"
    t.string "email_university"
    t.string "description_university"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "university_x_cities", force: :cascade do |t|
    t.integer "code_city_id"
    t.integer "code_university_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code_city_id"], name: "index_university_x_cities_on_code_city_id"
    t.index ["code_university_id"], name: "index_university_x_cities_on_code_university_id"
  end

end
