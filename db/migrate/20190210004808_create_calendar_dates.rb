class CreateCalendarDates < ActiveRecord::Migration[5.2]
  def up
    create_table :calendar_dates, id: false do |t|
      t.integer :id, null: false
      t.date :date_actual, null: false
      t.bigint :epoch, null: false
      t.string :day_suffix, null: false
      t.string :day_name, null: false
      t.integer :day_of_week, null: false
      t.integer :day_of_month, null: false
      t.integer :day_of_quarter, null: false
      t.integer :day_of_year, null: false
      t.integer :week_of_month, null: false
      t.integer :week_of_year, null: false
      t.string :week_of_year_iso, null: false
      t.integer :month_actual, null: false
      t.string :month_name, null: false
      t.string :month_name_short, null: false
      t.integer :quarter_actual, null: false
      t.string :quarter_name, null: false
      t.integer :year_actual, null: false
      t.date :first_day_of_week, null: false
      t.date :last_day_of_week, null: false
      t.date :first_day_of_month, null: false
      t.date :last_day_of_month, null: false
      t.date :first_day_of_quarter, null: false
      t.date :last_day_of_quarter, null: false
      t.date :first_day_of_year, null: false
      t.date :last_day_of_year, null: false
      t.boolean :weekend
    end

    execute "ALTER TABLE calendar_dates ADD PRIMARY KEY (id)"
  end

  def down
    drop_table :calendar_dates
  end
end
