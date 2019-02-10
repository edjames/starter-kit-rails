class CalendarDate < ApplicationRecord

  scope :ordered, -> { order(id: :asc) }

end
