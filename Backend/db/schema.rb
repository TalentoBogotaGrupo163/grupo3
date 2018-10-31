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

ActiveRecord::Schema.define(version: 2018_10_31_051217) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
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
    t.bigint "universities_id"
    t.bigint "benefit_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["benefit_id"], name: "index_benefit_x_universities_on_benefit_id"
    t.index ["universities_id"], name: "index_benefit_x_universities_on_universities_id"
  end

  create_table "benefits", force: :cascade do |t|
    t.string "name_benefit"
    t.string "description_benefit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string "name_city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "city_x_universities", force: :cascade do |t|
    t.bigint "universities_id"
    t.bigint "city_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_city_x_universities_on_city_id"
    t.index ["universities_id"], name: "index_city_x_universities_on_universities_id"
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
    t.string "name_course"
    t.string "description_benefit"
    t.string "url_course"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "debilities", force: :cascade do |t|
    t.string "name_debility"
    t.string "description_debility"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "entities", force: :cascade do |t|
    t.string "name_entity"
    t.string "address_entity"
    t.string "description_entity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genders", force: :cascade do |t|
    t.string "name_gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "habilities", force: :cascade do |t|
    t.string "name_hability"
    t.string "description_hability"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "note_x_subjects", force: :cascade do |t|
    t.bigint "subject_id"
    t.bigint "note_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["note_id"], name: "index_note_x_subjects_on_note_id"
    t.index ["subject_id"], name: "index_note_x_subjects_on_subject_id"
  end

  create_table "notes", force: :cascade do |t|
    t.string "value_note"
    t.string "description_note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.date "birthdate_people"
    t.string "address_people"
    t.string "email_people"
    t.bigint "gender_id"
    t.string "name_people"
    t.string "lastname_people"
    t.bigint "school_id"
    t.string "phone_people"
    t.bigint "city_id"
    t.bigint "type_person_id"
    t.string "password_people"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_people_on_city_id"
    t.index ["gender_id"], name: "index_people_on_gender_id"
    t.index ["school_id"], name: "index_people_on_school_id"
    t.index ["type_person_id"], name: "index_people_on_type_person_id"
  end

  create_table "person_x_debilities", force: :cascade do |t|
    t.bigint "debility_id"
    t.bigint "person_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["debility_id"], name: "index_person_x_debilities_on_debility_id"
    t.index ["person_id"], name: "index_person_x_debilities_on_person_id"
  end

  create_table "person_x_habilities", force: :cascade do |t|
    t.bigint "hability_id"
    t.bigint "person_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hability_id"], name: "index_person_x_habilities_on_hability_id"
    t.index ["person_id"], name: "index_person_x_habilities_on_person_id"
  end

  create_table "program_x_universities", force: :cascade do |t|
    t.bigint "universities_id"
    t.bigint "program_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["program_id"], name: "index_program_x_universities_on_program_id"
    t.index ["universities_id"], name: "index_program_x_universities_on_universities_id"
  end

  create_table "programs", force: :cascade do |t|
    t.string "name_program"
    t.string "description_program"
    t.string "url_program"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schools", force: :cascade do |t|
    t.string "address_school"
    t.string "email_school"
    t.string "name_school"
    t.string "description_school"
    t.string "phone_school"
    t.bigint "city_id"
    t.bigint "type_person_id"
    t.string "password_school"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_schools_on_city_id"
    t.index ["type_person_id"], name: "index_schools_on_type_person_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name_subject"
    t.string "description_subject"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "type_people", force: :cascade do |t|
    t.string "name_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "universities", force: :cascade do |t|
    t.string "address_university"
    t.string "email_university"
    t.string "name_university"
    t.string "description_university"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "activity_x_subjects", "activities"
  add_foreign_key "activity_x_subjects", "subjects"
  add_foreign_key "benefit_x_universities", "benefits"
  add_foreign_key "benefit_x_universities", "universities", column: "universities_id"
  add_foreign_key "city_x_universities", "cities"
  add_foreign_key "city_x_universities", "universities", column: "universities_id"
  add_foreign_key "course_x_entities", "courses"
  add_foreign_key "course_x_entities", "entities"
  add_foreign_key "note_x_subjects", "notes"
  add_foreign_key "note_x_subjects", "subjects"
  add_foreign_key "people", "cities"
  add_foreign_key "people", "genders"
  add_foreign_key "people", "schools"
  add_foreign_key "people", "type_people"
  add_foreign_key "person_x_debilities", "debilities"
  add_foreign_key "person_x_debilities", "people"
  add_foreign_key "person_x_habilities", "habilities"
  add_foreign_key "person_x_habilities", "people"
  add_foreign_key "program_x_universities", "programs"
  add_foreign_key "program_x_universities", "universities", column: "universities_id"
  add_foreign_key "schools", "cities"
  add_foreign_key "schools", "type_people"
end
