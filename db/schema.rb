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

ActiveRecord::Schema.define(version: 2019_02_10_004819) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_stat_statements"
  enable_extension "pgcrypto"
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"

  create_table "calendar_dates", id: :integer, default: nil, force: :cascade do |t|
    t.date "date_actual", null: false
    t.bigint "epoch", null: false
    t.string "day_suffix", null: false
    t.string "day_name", null: false
    t.integer "day_of_week", null: false
    t.integer "day_of_month", null: false
    t.integer "day_of_quarter", null: false
    t.integer "day_of_year", null: false
    t.integer "week_of_month", null: false
    t.integer "week_of_year", null: false
    t.string "week_of_year_iso", null: false
    t.integer "month_actual", null: false
    t.string "month_name", null: false
    t.string "month_name_short", null: false
    t.integer "quarter_actual", null: false
    t.string "quarter_name", null: false
    t.integer "year_actual", null: false
    t.date "first_day_of_week", null: false
    t.date "last_day_of_week", null: false
    t.date "first_day_of_month", null: false
    t.date "last_day_of_month", null: false
    t.date "first_day_of_quarter", null: false
    t.date "last_day_of_quarter", null: false
    t.date "first_day_of_year", null: false
    t.date "last_day_of_year", null: false
    t.boolean "weekend"
    t.index ["date_actual"], name: "index_calendar_dates_on_date_actual"
  end

end
