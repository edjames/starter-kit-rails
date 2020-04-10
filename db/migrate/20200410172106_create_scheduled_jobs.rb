class CreateScheduledJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :scheduled_jobs, id: :uuid do |t|
      t.string :job_class
      t.integer :frequency_quantity
      t.string :frequency_period
      t.string :at
      t.timestamps
    end
  end
end
