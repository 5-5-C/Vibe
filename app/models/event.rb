class Event < ApplicationRecord
  belongs_to :organization
  has_and_belongs_to_many :users
  # accepts_nested_attributes_for :hours
  validates_presence_of :name, :date, :description, :start_time, :end_time, :location, :capacity


  validate :date_in_future
  validate :end_time_after_start_time


  def date_in_future
    if date.present? && date < Date.today
      errors.add(:date, "date must be later than today!")
    end
  end

  def end_time_after_start_time
    if end_time.present? && end_time <= start_time
      errors.add(:end_time, "must be later than start time!")
    end
  end

end
