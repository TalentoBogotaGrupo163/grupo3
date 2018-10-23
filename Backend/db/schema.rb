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

ActiveRecord::Schema.define(version: 2018_10_23_033335) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.integer "code_activity"
    t.string "name_activity"
    t.string "description_activity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "activity_x_subjects", force: :cascade do |t|
    t.bigint "subject_id"
    t.bigint "activity_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_activity_x_subjects_on_activity_id"
    t.index ["subject_id"], name: "index_activity_x_subjects_on_subject_id"
  end

  create_table "benefit_x_universities", force: :cascade do |t|
    t.bigint "university_id"
    t.bigint "benefit_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["benefit_id"], name: "index_benefit_x_universities_on_benefit_id"
    t.index ["university_id"], name: "index_benefit_x_universities_on_university_id"
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
    t.bigint "entity_id"
    t.bigint "course_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_course_x_entities_on_course_id"
    t.index ["entity_id"], name: "index_course_x_entities_on_entity_id"
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

  create_table "debility_x_people", force: :cascade do |t|
    t.bigint "people_id"
    t.bigint "debility_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["debility_id"], name: "index_debility_x_people_on_debility_id"
    t.index ["people_id"], name: "index_debility_x_people_on_people_id"
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
    t.string "code_hability"
    t.string "name_hability"
    t.string "description_hability"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hability_x_people", force: :cascade do |t|
    t.bigint "hability_id"
    t.bigint "people_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hability_id"], name: "index_hability_x_people_on_hability_id"
    t.index ["people_id"], name: "index_hability_x_people_on_people_id"
  end

  create_table "note_x_subjects", force: :cascade do |t|
    t.bigint "note_id"
    t.bigint "subject_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["note_id"], name: "index_note_x_subjects_on_note_id"
    t.index ["subject_id"], name: "index_note_x_subjects_on_subject_id"
  end

  create_table "notes", force: :cascade do |t|
    t.integer "code_note"
    t.string "valuenote_note"
    t.string "description_note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.integer "code_person"
    t.string "name_person"
    t.date "age_person"
    t.string "address_person"
    t.string "email_person"
    t.bigint "gender_id"
    t.bigint "city_id"
    t.bigint "school_id"
    t.bigint "type_users_id"
    t.string "password_person"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_people_on_city_id"
    t.index ["gender_id"], name: "index_people_on_gender_id"
    t.index ["school_id"], name: "index_people_on_school_id"
    t.index ["type_users_id"], name: "index_people_on_type_users_id"
  end

  create_table "program_x_universities", force: :cascade do |t|
    t.bigint "program_id"
    t.bigint "university_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["program_id"], name: "index_program_x_universities_on_program_id"
    t.index ["university_id"], name: "index_program_x_universities_on_university_id"
  end

  create_table "programs", force: :cascade do |t|
    t.integer "code_program"
    t.string "name_program"
    t.string "description_program"
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
    t.bigint "city_id"
    t.bigint "type_users_id"
    t.string "password_school"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_schools_on_city_id"
    t.index ["type_users_id"], name: "index_schools_on_type_users_id"
  end

  create_table "subject_x_people", force: :cascade do |t|
    t.bigint "people_id"
    t.bigint "subject_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["people_id"], name: "index_subject_x_people_on_people_id"
    t.index ["subject_id"], name: "index_subject_x_people_on_subject_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.integer "code_subject"
    t.string "name_subject"
    t.string "description_subject"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "type_users", force: :cascade do |t|
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
    t.bigint "university_id"
    t.bigint "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_university_x_cities_on_city_id"
    t.index ["university_id"], name: "index_university_x_cities_on_university_id"
  end

  add_foreign_key "activity_x_subjects", "activities"
  add_foreign_key "activity_x_subjects", "subjects"
  add_foreign_key "benefit_x_universities", "benefits"
  add_foreign_key "benefit_x_universities", "universities"
  add_foreign_key "course_x_entities", "courses"
  add_foreign_key "course_x_entities", "entities"
  add_foreign_key "debility_x_people", "debilities"
  add_foreign_key "debility_x_people", "people", column: "people_id"
  add_foreign_key "hability_x_people", "habilities"
  add_foreign_key "hability_x_people", "people", column: "people_id"
  add_foreign_key "note_x_subjects", "notes"
  add_foreign_key "note_x_subjects", "subjects"
  add_foreign_key "people", "cities"
  add_foreign_key "people", "genders"
  add_foreign_key "people", "schools"
  add_foreign_key "people", "type_users", column: "type_users_id"
  add_foreign_key "program_x_universities", "programs"
  add_foreign_key "program_x_universities", "universities"
  add_foreign_key "schools", "cities"
  add_foreign_key "schools", "type_users", column: "type_users_id"
  add_foreign_key "subject_x_people", "people", column: "people_id"
  add_foreign_key "subject_x_people", "subjects"
  add_foreign_key "university_x_cities", "cities"
  add_foreign_key "university_x_cities", "universities"
end
