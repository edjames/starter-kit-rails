class AddIndexToCalendarDates < ActiveRecord::Migration[5.2]
  def change
    add_index :calendar_dates, :date_actual
  end
end
