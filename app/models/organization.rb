class Organization < ApplicationRecord
  has_many :events
  belongs_to :users
end
