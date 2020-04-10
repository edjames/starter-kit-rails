class ScheduledJob < ActiveRecord::Base

  FREQUENCY_PERIODS = %i[seconds minutes hours days weeks months].freeze

  validates :job_class, :frequency_quantity, :frequency_period,
            presence: true

  def frequency
    frequency_quantity.send(frequency_period)
  end

end
