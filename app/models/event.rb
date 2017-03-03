class Event < ApplicationRecord
  belongs_to :organization
  has_many :timeslots
end
