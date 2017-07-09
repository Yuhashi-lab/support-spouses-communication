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

ActiveRecord::Schema.define(version: 20170709161605) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "children", force: :cascade do |t|
    t.string "name"
    t.date "birthday"
    t.bigint "family_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["family_id"], name: "index_children_on_family_id"
  end

  create_table "families", force: :cascade do |t|
    t.bigint "hasband_id"
    t.bigint "wife_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hasband_id"], name: "index_families_on_hasband_id"
    t.index ["wife_id"], name: "index_families_on_wife_id"
  end

  create_table "hasbands", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.integer "family_id"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "access_token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_hasbands_on_email", unique: true
    t.index ["reset_password_token"], name: "index_hasbands_on_reset_password_token", unique: true
  end

  create_table "question_answers", force: :cascade do |t|
    t.bigint "question_id"
    t.integer "user_id"
    t.string "user_type"
    t.text "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_question_answers_on_question_id"
    t.index ["user_id", "user_type"], name: "index_question_answers_on_user_id_and_user_type"
  end

  create_table "questions", force: :cascade do |t|
    t.text "content"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "talks", force: :cascade do |t|
    t.bigint "family_id"
    t.integer "user_id"
    t.string "user_type"
    t.text "statement"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["family_id"], name: "index_talks_on_family_id"
  end

  create_table "wives", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.integer "family_id"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "access_token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_wives_on_email", unique: true
    t.index ["reset_password_token"], name: "index_wives_on_reset_password_token", unique: true
  end

  add_foreign_key "families", "hasbands"
  add_foreign_key "families", "wives"
  add_foreign_key "question_answers", "questions"
  add_foreign_key "talks", "families"
end
