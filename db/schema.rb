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

ActiveRecord::Schema.define(version: 2020_01_29_012846) do

  create_table "images", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "image", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resumes", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "resume_name", null: false
    t.string "fullname", null: false
    t.string "name_kana", null: false
    t.string "gender", null: false
    t.string "address_kana", null: false
    t.string "birthday", null: false
    t.string "submit_date"
    t.string "post_code", null: false
    t.string "perfectures", null: false
    t.string "build", null: false
    t.string "tel", null: false
    t.string "cellphone", null: false
    t.string "e_mail", null: false
    t.string "e_y"
    t.string "e_m"
    t.string "education_j"
    t.string "e_y2"
    t.string "e_m2"
    t.string "education2_j"
    t.string "e_y3"
    t.string "e_m3"
    t.string "education3_h"
    t.string "e_y4"
    t.string "e_m4"
    t.string "education4_h"
    t.string "e_y5"
    t.string "e_m5"
    t.string "education5_c"
    t.string "e_y6"
    t.string "e_m6"
    t.string "education6_c"
    t.string "a_y"
    t.string "a_m"
    t.string "award"
    t.string "a_y2"
    t.string "a_m2"
    t.string "award2"
    t.string "a_y3"
    t.string "a_m3"
    t.string "award3"
    t.string "a_y4"
    t.string "a_m4"
    t.string "award4"
    t.string "a_y5"
    t.string "a_m5"
    t.string "award5"
    t.string "a_y6"
    t.string "a_m6"
    t.string "award6"
    t.string "l_y"
    t.string "l_m"
    t.string "license"
    t.string "l_y2"
    t.string "l_m2"
    t.string "license2"
    t.string "l_y3"
    t.string "l_m3"
    t.string "license3"
    t.string "l_y4"
    t.string "l_m4"
    t.string "license4"
    t.string "l_y5"
    t.string "l_m5"
    t.string "license5"
    t.text "free_message", null: false
    t.text "motivation", null: false
    t.string "password_digest"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_resumes_on_user_id"
  end

  create_table "users", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["name"], name: "index_users_on_name"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "resumes", "users"
end
