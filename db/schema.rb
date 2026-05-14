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

ActiveRecord::Schema[8.1].define(version: 2026_04_10_172106) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"
  enable_extension "pg_stat_statements"
  enable_extension "pgcrypto"
  enable_extension "uuid-ossp"

  create_table "calendar_dates", id: :integer, default: nil, force: :cascade do |t|
    t.datetime "created_at", precision: nil
    t.date "date_actual", null: false
    t.string "day_name", null: false
    t.integer "day_of_month", null: false
    t.integer "day_of_quarter", null: false
    t.integer "day_of_week", null: false
    t.integer "day_of_year", null: false
    t.string "day_suffix", null: false
    t.bigint "epoch", null: false
    t.date "first_day_of_month", null: false
    t.date "first_day_of_quarter", null: false
    t.date "first_day_of_week", null: false
    t.date "first_day_of_year", null: false
    t.date "last_day_of_month", null: false
    t.date "last_day_of_quarter", null: false
    t.date "last_day_of_week", null: false
    t.date "last_day_of_year", null: false
    t.integer "month_actual", null: false
    t.string "month_name", null: false
    t.string "month_name_short", null: false
    t.integer "quarter_actual", null: false
    t.string "quarter_name", null: false
    t.integer "week_of_month", null: false
    t.integer "week_of_year", null: false
    t.string "week_of_year_iso", null: false
    t.boolean "weekend"
    t.integer "year_actual", null: false
    t.index ["date_actual"], name: "index_calendar_dates_on_date_actual"
  end

  create_table "scheduled_jobs", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "at"
    t.datetime "created_at", null: false
    t.string "frequency_period"
    t.integer "frequency_quantity"
    t.string "job_class"
    t.datetime "updated_at", null: false
  end

  create_table "users", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.datetime "current_sign_in_at", precision: nil
    t.inet "current_sign_in_ip"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.datetime "last_sign_in_at", precision: nil
    t.inet "last_sign_in_ip"
    t.string "name", default: "", null: false
    t.datetime "remember_created_at", precision: nil
    t.datetime "reset_password_sent_at", precision: nil
    t.string "reset_password_token"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end
end
