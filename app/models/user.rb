class User < ApplicationRecord
  has_many :time_slots
  has_many :events through: :time_slots

  has_secure_password
end
