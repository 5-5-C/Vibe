class TimeSlot < ApplicationRecord
  belongs_to :events
  has_many :users, through: :events

  validates :event_size, :date, :event_id, :user_id, :event_time, presence: true

end
