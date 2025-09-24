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

ActiveRecord::Schema[8.0].define(version: 2025_09_24_045626) do
  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.text "user"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "story_id"
    t.index ["story_id"], name: "index_comments_on_story_id"
  end

  create_table "response_comments", force: :cascade do |t|
    t.text "content"
    t.integer "comment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "user"
    t.integer "response_id"
    t.index ["comment_id"], name: "index_response_comments_on_comment_id"
  end

  create_table "stories", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "url"
    t.text "user"
    t.text "upvotes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "comments", "stories"
  add_foreign_key "response_comments", "comments"
end
