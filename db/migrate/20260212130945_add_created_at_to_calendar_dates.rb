class AddCreatedAtToCalendarDates < ActiveRecord::Migration[5.2]
  def change
    add_column :calendar_dates, :created_at, :datetime
  end
end
