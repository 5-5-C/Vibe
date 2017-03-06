class Event < ApplicationRecord
  belongs_to :organization

  validate :date_cannot_be_in_the_past
  validates :date, :name, :location, :description, presence: true

def date_cannot_be_in_the_past
  if date.present? && date < Date.today
    errors.add(:date, "can't be in the past")
  end
end

end
