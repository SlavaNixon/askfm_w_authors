# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_06_23_144052) do

  create_table "hashtag_lists", force: :cascade do |t|
    t.string "body"
    t.integer "hashtag_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "question_id"
    t.index ["hashtag_id"], name: "index_hashtag_lists_on_hashtag_id"
    t.index ["question_id"], name: "index_hashtag_lists_on_question_id"
  end

  create_table "hashtags", force: :cascade do |t|
    t.string "body"
    t.integer "question_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "hashtag_list_id"
    t.index ["hashtag_list_id"], name: "index_hashtags_on_hashtag_list_id"
    t.index ["question_id"], name: "index_hashtags_on_question_id"
  end

  create_table "questions", force: :cascade do |t|
    t.text "body"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "answer"
    t.integer "who_ask_id"
    t.integer "hashtag_id"
    t.integer "hashtag_list_id"
    t.index ["hashtag_id"], name: "index_questions_on_hashtag_id"
    t.index ["hashtag_list_id"], name: "index_questions_on_hashtag_list_id"
    t.index ["user_id"], name: "index_questions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "nickname"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
    t.index ["email"], name: "index_users_on_email"
  end

  add_foreign_key "hashtag_lists", "hashtags"
  add_foreign_key "hashtag_lists", "questions"
  add_foreign_key "hashtags", "hashtag_lists"
  add_foreign_key "hashtags", "questions"
  add_foreign_key "questions", "hashtag_lists"
  add_foreign_key "questions", "hashtags"
end
